class OrderHasManyPumpkinsThroughLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.belongs_to :order, index: true
      t.belongs_to :pumpkin, index: true
      t.integer :amount
      t.timestamps
    end
  end
end
