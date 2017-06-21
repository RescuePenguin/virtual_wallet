class Transaction < ApplicationRecord
  belongs_to :source, class_name: 'Wallet'
  belongs_to :target, class_name: 'Wallet'
  belongs_to :credit_card

  enum payment_option: { wallet: 0, credit_card: 1 }

  validates :amount, :source, :target, :payment_type, presence: true
  validates :amount, numericality: { greater_than: 0.0 }
  validate :source_is_not_target
end
