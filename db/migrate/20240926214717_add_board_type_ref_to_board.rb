class AddBoardTypeRefToBoard < ActiveRecord::Migration[7.1]
  def change
    add_reference :boards, :board_type, null: false, foreign_key: true
  end
end
