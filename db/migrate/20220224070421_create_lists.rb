class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :task
      t.string :state , default: "Ongoing"

      t.timestamps
    end
  end
end
