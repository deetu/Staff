class AddGenderIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :gender_id, :integer

  end
end
