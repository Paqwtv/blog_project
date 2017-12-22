class CreateJoinTableCategoriesComents < ActiveRecord::Migration[5.1]
  def change
    create_join_table :categories, :coments do |t|
      t.index [:category_id, :coment_id]
      t.index [:coment_id, :category_id]
    end
  end
end
