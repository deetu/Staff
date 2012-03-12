class AddTelephoneToPeople < ActiveRecord::Migration
  def change
    add_column :people, :telephone, :string

  end
end
