class CreateSortedIndex < ActiveRecord::Migration
  def change
    add_column :words, :sorted_index, :string
  end
end
