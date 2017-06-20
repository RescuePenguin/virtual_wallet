class Wallet < ApplicationRecord
  belongs_to :user
  has_many :sent_transactions, class_name: 'Transaction', foreign_id: :source_id
  has_many :received_transactions, class_name: 'Transaction', foreign_id: :target_id
  has_many :credit_cards

  validates :balance, :user, presence: true
end
