class AddEmailToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :email, :string
  end
end
