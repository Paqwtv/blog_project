class CreateJoinTableComentsPosts < ActiveRecord::Migration[5.1]
  def change
    create_join_table :coments, :posts do |t|
      t.index [:coment_id, :post_id]
      t.index [:post_id, :coment_id]
    end
  end
end
