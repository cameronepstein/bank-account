require 'account'
require 'statement'

describe Statement do
  subject(:statement) {described_class.new}

    describe 'transactions' do
      it 'add date, amount and balance to statement' do
        statement.add_to_statement("10, 08, 2016", 10, 10)
        expect(statement.account_statement).to eq([["10, 08, 2016", 10, 10]])
      end
    end
  end
