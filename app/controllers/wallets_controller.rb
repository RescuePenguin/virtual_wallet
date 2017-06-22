class WalletsController < ApplicationController
  before_action :get_wallet, only: [:show, :edit, :update]
  def show
  end

  def edit
    @transaction = Transaction.new source_id: @wallet.id, target_id: @wallet.id
  end

  def update
  end

  def get_wallet
    @wallet = current_user.wallet
  end

  def wallet_params
    params.require(:wallet).permit :balance
  end
end
