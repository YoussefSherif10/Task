class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :todolist, null: false, foreign_key: true
      t.string :name
      t.string :state, default: "Ongoing" 

      t.timestamps
    end
  end
end
