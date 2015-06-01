class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :number
      t.text :corpus
      t.references :wikipage, index: true

      t.timestamps null: false
    end
    add_foreign_key :versions, :wikipages
  end
end
