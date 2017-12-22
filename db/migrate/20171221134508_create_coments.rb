class CreateComents < ActiveRecord::Migration[5.1]
  def change
    create_table :coments do |t|
      t.belongs_to :user, index: true
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
