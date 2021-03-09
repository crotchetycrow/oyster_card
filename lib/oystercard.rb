class Oystercard

  attr_reader :balance, :current_station

  DEFAULT_BALANCE = 0
  MINIMUM_BALANCE = 1
  MAXIMUM_LIMIT = 90
  MINIMUM_FARE = -1

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    # @in_use = false
    @current_station = nil
  end

  def top_up(amount)
    pot_balance = @balance + amount
    raise "Card max limit is £#{Oystercard::MAXIMUM_LIMIT}. Top up failed, no money added." if pot_balance > MAXIMUM_LIMIT
    @balance = pot_balance
    "Card succesfully topped up. Balance is now £#{@balance}."
  end

  def touch_in(station)
    raise "Card does not have a minimum balance of £1. Please top up." unless @balance >= MINIMUM_BALANCE
    @current_station = station
    in_journey?
  end

  def touch_out
    @current_station = nil
    @balance += MINIMUM_FARE
    in_journey?
  end

  def in_journey?
    @current_station != nil
  end

private
  def deduct(fare)
    @balance -= fare
    "£#{fare} Fare deducted. New balance is £#{@balance}."
  end
end
