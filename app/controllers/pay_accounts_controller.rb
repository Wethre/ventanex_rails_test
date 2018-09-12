class PayAccountsController < ApplicationController

  def index
    @pay_accounts = PayAccount.all
  end

  def show
  end

  def new
    @pay_account = PayAccount.new
  end

  def create
    @pay_account = PayAccount.new(account_params)
    if @pay_account.save
      flash[:success] = "Account was created successfully"
      redirect_to pay_accounts_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private
    def account_params
      params.require(:pay_account).permit(:nickname, :account_number, :account_type)
    end



end
