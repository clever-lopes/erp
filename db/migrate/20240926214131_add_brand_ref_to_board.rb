class AddBrandRefToBoard < ActiveRecord::Migration[7.1]
  def change
    add_reference :boards, :board, null: false, foreign_key: true
  end
end
