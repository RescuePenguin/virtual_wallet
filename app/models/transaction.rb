class Transaction < ApplicationRecord
  belongs_to :source, class_name: 'Wallet'
  belongs_to :target, class_name: 'Wallet'
  belongs_to :sender, class_name: 'User', through: :source
  belongs_to :receiver, class_name: 'User', through: :target
  belongs_to :credit_card

  enum payment_option: { wallet: 0, credit_card: 1 }

  validates :amount, :source, :target, :payment_type, presence: true
  validates :amount, numericality: { greater_than: 0.0 }
  validate :source_is_not_target

  def source_is_not_target
    errors.add :base, 'source cannot be target' if sender == receiver
  end
end
