class TransactionsController < ApplicationController
  def create
    @transaction = Transaction.new transaction_params
    @transaction.source.update_attributes(balance: @transaction.source.balance - params[:transaction][:amount].to_f) unless
      @transaction.source == @transaction.target
    @transaction.target.update_attributes(balance: (@transaction.target.balance + params[:transaction][:amount].to_f))
    redirect_to wallet_path
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :credit_card_id, :source_id, :target_id)
  end
end
