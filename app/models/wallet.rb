class Wallet < ApplicationRecord
  belongs_to :user
  has_many :debits, class_name: 'Transaction', foreign_key: :source_id
  has_many :credits, class_name: 'Transaction', foreign_key: :target_id
  has_many :credit_cards

  validates :balance, :user, presence: true
end
