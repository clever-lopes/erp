class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :serial_number
      t.integer :quantity

      t.timestamps
    end
  end
end
