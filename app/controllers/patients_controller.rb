class PatientsController < ApplicationController
  before_action :get_random_patients
  respond_to :html, :json

  def index
    @data = {
      :patients => @random_patients,
      :reports => Report.get_reports,
      :patient_count => Patient.all.length,
      :report_count => Report.all.length
    }
    respond_with(@data) do |format|
      format.json {render :json => @data.as_json}
      format.html
    end
  end

  def show
    patient = Patient.get_patient(params[:id])
    @data = {
      :patients => @random_patients,
      :patient => patient,
      :reports => Report.get_reports(patient[:ssn]),
      :report_count => Report.all.length
    }
    respond_with(@data) do |format|
      format.json {render :json => @data.as_json}
      format.html
    end
  end

  private

  def get_random_patients
    @random_patients = Patient.random_patients
  end
end
