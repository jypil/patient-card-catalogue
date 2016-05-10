module Formattable
  extend ActiveSupport::Concern

  def format_payload(payload, key_length=12)
    data = {}
    payload.each do |ssn, test_value|
      test_value.each do |name, detail_value|
        @lab_test = {
          :ssn => ssn,
          :name => name,
          :date => detail_value[:date],
          :location => detail_value[:location],
          :physician => detail_value[:physician],
          :data => detail_value[:data]
        }
        data[SecureRandom.urlsafe_base64(key_length)] = @lab_test
      end
    end
    data
  end

  def respond_with_success(data=nil)
    response = {
      :status => 200,
      :message => 'Success'
    }

    if data
      response[:data] = data
    end
    response
  end

  def respond_with_error(status=500, message='Error', data=nil)
    response = {
      :status => status,
      :message => message
    }

    if data
      response[:data] = data
    end
    response
  end
end