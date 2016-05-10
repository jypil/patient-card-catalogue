class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :ssn
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.timestamps
    end
    add_index :patients, :ssn, unique: true
  end
end
