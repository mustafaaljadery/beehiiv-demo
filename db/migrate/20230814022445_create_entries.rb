class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :subject
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end
end
