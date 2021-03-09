require "./lib/oystercard"

describe Oystercard do
  let(:test_card) { Oystercard.new(40) }

  describe "#balance" do
    it "checks balance" do
      expect(subject).to respond_to(:balance)
    end
  end

  describe "#top_up" do
    it "tops up balance" do
      expect(subject).to respond_to(:top_up)
    end

    it "tops up £50 and provide confirmation" do
      expect(subject.top_up(50)).to eq "Card succesfully topped up. Balance is now £50."
    end

    it "cannot top up past the MAXIMUM LIMIT and raises an error" do
      expect{subject.top_up(100)}.to raise_error "Card max limit is £#{Oystercard::MAXIMUM_LIMIT}. Top up failed, no money added."
    end
  end

  describe "#deduct" do
    it "deducts a fare from the balance" do
      expect(test_card.deduct(4)).to eq "£4 Fare deducted. New balance is £36."
    end
  end

  describe "#touch_in" do
    it "allows user to go through barriers" do
      expect(subject).to respond_to(:touch_in)
    end

    it "returns true if called" do
      expect(test_card.touch_in).to eq true
    end

    it "raises an error if card does not have the MINIMUM AMOUNT to travel" do
      expect{subject.touch_in}.to raise_error "Card does not have a minimum balance of £#{Oystercard::MINIMUM_BALANCE}. Please top up."
    end
  end

  describe "#touch_out" do
    it "allows user to exit the barriers" do
      expect(subject).to respond_to(:touch_out)
    end

    it "returns false if called" do
      expect(subject.touch_out).to eq false
    end
  end

  describe "#in_journey?" do
    it "checks whether user is currently in a journey" do
      expect(subject).to respond_to(:in_journey?)
    end

    it "returns true when card is in use on a journey" do
      test_card.touch_in
      expect(test_card).to be_in_journey
    end

    it "returns false when card is newly created" do
      expect(subject.in_journey?).to eq false
    end

    it "returns false when card is touched out and no longer in use" do
      test_card.touch_out
      expect(test_card).not_to be_in_journey
    end
  end
end
