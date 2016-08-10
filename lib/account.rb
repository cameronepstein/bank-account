require 'date_finder'
require 'date'

class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @date_finder = Date_finder.new
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    transaction = []
    transaction << Date.today
    transaction << amount
    transaction << @balance
    @statement.account_statement << transaction
  end

  def withdraw(amount)
    @balance -= amount
    transaction = []
    transaction << Date.today
    transaction << amount
    transaction << @balance
    @statement.account_statement << transaction
  end


  #
  # def record_transaction
  #   transaction = []
  #   transaction << Date.today
  #   transaction << amount
  #   transaction << @balance
  #   @statement.account_statement << transaction
  # end

end
