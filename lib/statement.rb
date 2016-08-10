require 'account'
require 'date_finder'


class Statement
  attr_accessor :account_statement

  def initialize
    @account_statement = []
  end

  def add_to_statement(date, amount, balance)
    statement_addition = []
    statement_addition << date
    statement_addition << amount
    statement_addition << balance
    @account_statement << statement_addition
  end

end
