class CreateWallets < ActiveRecord::Migration[5.0]
  def change
    create_table :wallets do |t|
      t.decimal :balance, null: false, default: 0.0, scale: 2, precision: 15

      t.belongs_to :user
      t.timestamps
    end
  end
end
