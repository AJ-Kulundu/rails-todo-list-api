class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :todo
      t.text :descrption
      t.boolean :done

      t.timestamps
    end
  end
end
