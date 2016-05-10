class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :ssn
      t.string :name
      t.date :date
      t.string :location
      t.string :physician
      t.string :data
      t.timestamps
    end
  end
end
