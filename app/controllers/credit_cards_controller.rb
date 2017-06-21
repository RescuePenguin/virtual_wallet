class CreditCardsController < ApplicationController
  def new
    @wallet = current_user.wallet
    @credit_card = CreditCard.new wallet_id: @wallet.id
  end

  def create
    params[:credit_card][:expiration_date] = DateTime.parse(params[:expiration_year] + '-' + params[:expiration_month] + '-1')
    @credit_card = CreditCard.create! credit_card_params
    redirect_to wallet_path
  end

  def credit_card_params
    params.require(:credit_card).permit(:wallet_id, :number, :expiration_date, :full_name, :cvv)
  end
end
