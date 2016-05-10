class Report < ActiveRecord::Base
  serialize :data
  belongs_to :patient, foreign_key: :ssn, primary_key: :ssn

  def self.get_reports(ssn=nil, report_count=20)
    if ssn
      # Report.where(ssn: ssn).order(date: :desc, created_at: :desc).first(report_count)
      Report.where(ssn: ssn).order(date: :desc, created_at: :desc)
    else
      # Report.order(date: :desc, created_at: :desc).first(report_count)
      Report.order(date: :desc, created_at: :desc)
    end
  end

  def self.generate(payload)
    result = {
      :success_count => 0,
      :fail_count => 0
    }
    payload.each do |key, value|
      report = Report.new(value)
      if report.save
        result[:success_count]+= 1
      else
        result[:fail_count]+= 1
      end
    end
    result
  end

  def as_json(options={})
    super(options.merge(include: :patient))
  end
end
