class Patient < ActiveRecord::Base
  validates :ssn, :name, :date_of_birth, :gender, presence: true
  has_many :reports, foreign_key: :ssn, primary_key: :ssn

  def self.random_patients(patient_count=5)
    Patient.order("RANDOM()").first(patient_count)
  end

  def self.get_patient(ssn)
    Patient.where(ssn: ssn).first
  end

  def as_json(options={})
    super(options.merge(include: :reports))
  end
end
