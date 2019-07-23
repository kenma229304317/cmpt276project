class CreateItems < ActiveRecord::Migration[5.2]
  def self.up
    create_table :items do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :image_url, null: false
      t.boolean :finished
      t.boolean :star
      t.string :email, null: false
        
      t.belongs_to :users, index: true
        
      t.timestamps
    end
  end
  def self.down
    drop_table :items
  end
end
