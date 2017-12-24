class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :author
      t.text :content
      t.string :name, unique: true
      t.string :file

      t.timestamps
    end
  end
end
