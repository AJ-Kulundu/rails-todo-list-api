class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :todos, :descrption, :description
    rename_column :todos, :todo, :title
  end
end
