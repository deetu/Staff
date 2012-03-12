class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :surname
      t.string :other_names
      t.date :dob
      t.date :date_of_employment
      t.date :date_of_resignation
      t.integer :salary_id

      t.timestamps
    end
  end
end
