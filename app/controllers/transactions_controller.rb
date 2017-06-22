class TransactionsController < ApplicationController
  before_action :set_target, only: [:create]
  before_action :check_balance, only: [:create]
  def new
    @transaction = Transaction.new source_id: current_user.wallet.id
    @wallet = current_user.wallet
  end

  def create
    @transaction = Transaction.new transaction_params
    @transaction.target ||= @target if @target.present?
    if @transaction.save!
      @transaction.source.update_attributes(balance: @transaction.source.balance - params[:transaction][:amount].to_f) if
        @transaction.source != @transaction.target && @transaction.payment_type == 'wallet'
      @transaction.target.update_attributes(balance: (@transaction.target.balance + params[:transaction][:amount].to_f))
      redirect_to wallet_path
    else
      redirect_back(fallback_location: add_funds_path)
    end
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :credit_card_id, :source_id, :target_id, :payment_type)
  end

  def set_target
    @target = User.where(['lower(email) = ?', params[:target_email].downcase]).first.wallet if params[:target_email].present?
  end

  def check_balance
    redirect_back(fallback_location: add_funds_path) if params[:payment_type] == 'wallet' && current_user.wallet.balance <
                                                                                             params[:transaction][:amount]
  end
end
