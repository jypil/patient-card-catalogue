class ReportsController < ApplicationController
  include Formattable
  respond_to :json

  def token
    if Token.validate_application_key(params[:application_key])
      token = Token.generate
      if token
        @data = respond_with_success({:token => token})
      else
        @data = respond_with_error(500, 'Token was not generated.')
      end
    else
      @data = respond_with_error(401, 'Invalid credentials.')
    end
    respond_with(@data) do |format|
      format.json {render :json => @data.as_json}
    end
  end

  def save
    if Token.validate_token(params[:token])
      payload = format_payload(params[:payload])
      report = Report.generate(payload)
      if report[:success_count] >= report[:fail_count]
        @data = respond_with_success({:success_count => report[:success_count], :fail_count => report[:fail_count]})
      else
        @data = respond_with_success(500, 'Most of the reports on the payload data failed.', {:success_count => report[:success_count], :fail_count => report[:fail_count]})
      end
    else
      @data = respond_with_error(401, 'Invalid token / token expired.')
    end
    respond_with(@data) do |format|
      format.json {render :json => @data.as_json}
    end
  end
end
