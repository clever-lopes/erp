class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :type
      t.string :serial_number
      t.integer :service_order
      t.integer :quantity

      t.timestamps
    end
  end
end
