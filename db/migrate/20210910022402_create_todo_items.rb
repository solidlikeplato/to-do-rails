class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.string :description
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
