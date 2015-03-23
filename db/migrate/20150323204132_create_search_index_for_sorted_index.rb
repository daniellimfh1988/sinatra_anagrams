class CreateSearchIndexForSortedIndex < ActiveRecord::Migration
  def change
    add_index(:words, :sorted_index)
  end
end
