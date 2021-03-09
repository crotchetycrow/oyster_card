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
end
