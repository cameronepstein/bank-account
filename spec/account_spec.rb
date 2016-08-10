require 'account'
require 'statement'

describe Account do
  subject(:account) {described_class.new}

    describe 'attributes' do
      it 'has a default balance of 0' do
        expect(account.balance).to eq 0
      end
    end

    describe 'deposit' do
      it 'adds amount to balance' do
        account.deposit(10)
        expect(account.balance).to eq 10
      end
      # 
      # it 'adds transaction to account_statement' do
      #   account.deposit(10)
      #   expect(@statement.account_statement).to receive(:deposit).with("Date.today, 10, 10")
      # end
    end

    describe 'withdraw' do
      it 'minuses amount from balance' do
        account.withdraw(10)
        expect(account.balance).to eq -10
      end
    end
end
