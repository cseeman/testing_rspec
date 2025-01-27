Coffee = Struct.new(:taste, :color )

RSpec.describe Coffee do
  let(:coffee) { Coffee.new("delicious") }

  it "is delicious" do
    expect(coffee.taste).to eq("delicious")
  end

  it "is light" do
    coffee.color = "light"
    expect(coffee.color).to eq("light")
  end
end
