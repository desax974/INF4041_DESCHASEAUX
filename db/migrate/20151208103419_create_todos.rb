class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.date :date
      t.boolean :done

      t.timestamps null: false
    end
  end
end
