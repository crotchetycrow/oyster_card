require "./lib/oystercard"

describe Oystercard do

  it "checks balance" do
    expect(subject).to respond_to(:balance)
  end
end
