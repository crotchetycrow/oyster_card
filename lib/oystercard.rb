class Oystercard

  attr_reader :balance

  DEFAULT_BALANCE = 0
  MAXIMUM_LIMIT = 90

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @in_use = false
  end

  def top_up(amount)
    pot_balance = @balance + amount
    raise "Card max limit is £#{Oystercard::MAXIMUM_LIMIT}. Top up failed, no money added." if pot_balance > MAXIMUM_LIMIT
    @balance = pot_balance
    "Card succesfully topped up. Balance is now £#{@balance}."
  end

  def deduct(fare)
    @balance -= fare
    "£#{fare} Fare deducted. New balance is £#{@balance}."
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end

  def in_journey?
    @in_use
  end
end
