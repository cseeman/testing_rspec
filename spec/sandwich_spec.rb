Sandwich = Struct.new(:taste, :toppings)

RSpec.describe Sandwich do
  let(:sandwich) { Sandwich.new("delicious") }

  it "is delicious" do
    expect(sandwich.taste).to eq("delicious")
  end
end
