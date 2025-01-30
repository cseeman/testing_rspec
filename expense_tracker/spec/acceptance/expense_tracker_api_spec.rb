require "rack/test"
require "json"
require_relative "../../app/api"

def app
  ExpenseTracker::Api.new
end

RSpec.describe "Expense Tracker API" do
  include Rack::Test::Methods

  def post_expense(expense)
    post "/expenses", JSON.generate(expense)
    expect(last_response.status).to eq(200)

    parsed = JSON.parse(last_response.body)
    expect(parsed["expense_id"]).to be_a(Integer)

    parsed["expense_id"]
  end

  it "returns the status 200" do
    get "/"
    expect(last_response.status).to eq 200
  end

  it "records submitted expenses" do
    coffee = post_expense({name: "Coffee", amount: 5.99, date: "2025-01-30"})
    zoo = post_expense({name: "Zoo", amount: 15.00, date: "2025-01-30"})
    book = post_expense({name: "Book", amount: 10.00, date: "2025-01-30"})

    get "/expenses/2025-01-30"
    expect(last_response.status).to eq(200)

    # expenses = JSON.parse(last_response.body)
    # expect(expenses).to contain_exactly(coffee, zoo, book)
  end

  xit "records submitted expenses" do
    pending "need to persist expenses"
  end
end
