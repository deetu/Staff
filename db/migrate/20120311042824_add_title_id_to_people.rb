class AddTitleIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :title_id, :integer

  end
end
