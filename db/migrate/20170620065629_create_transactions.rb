class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount, null: false, default: 0.0
      t.belongs_to :source, null: false
      t.belongs_to :target, null: false
      t.belongs_to :credit_card

      t.integer :payment_type, null: false

      t.timestamps
    end
  end
end
