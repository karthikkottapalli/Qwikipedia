class CreateWikipages < ActiveRecord::Migration
  def change
    create_table :wikipages do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
