class CreditCard < ApplicationRecord
  belongs_to :wallet
  has_many :transactions

  validates :number, :cvv, :full_name, :expiration_date, presence: true
  validates :number, format: { with: /[0-9]+/, message: 'only allows numbers' }
  validate :credit_card_number
  validate :date_in_future

  def credit_card_number
    errors.add :base, 'credit card number is invalid' unless CreditCardValidations::Detector.new(number).valid?
  end

  def date_in_future
    errors.add :base, 'credit card is expired' if DateTime.now > expiration_date
  end
end
