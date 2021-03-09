require "./lib/oystercard"

describe Oystercard do

  it "checks balance" do
    expect(subject).to respond_to(:balance)
  end
  it "tops up balance" do
    expect(subject).to respond_to(:top_up)
  end

end
