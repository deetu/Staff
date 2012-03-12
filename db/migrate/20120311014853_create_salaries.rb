class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :department
      t.float :salary

      t.timestamps
    end
  end
end
