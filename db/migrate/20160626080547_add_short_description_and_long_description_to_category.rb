class AddShortDescriptionAndLongDescriptionToCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :description, :string
    add_column :categories, :short_description, :string
    add_column :categories, :long_description, :string
  end
end
