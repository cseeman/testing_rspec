require "hanami/api"
require "json"
require "rack"
require "hanami/middleware/body_parser"

module ExpenseTracker
  class Api < Hanami::API
    use Hanami::Middleware::BodyParser, :json

    get "/" do
      "Hello, world"
    end

    post "/expenses" do
      request = Rack::Request.new(env)
      body(JSON.generate({expense_id: 42}))
      # expense = JSON.parse(request.body.read)

      status(200)
    end

    get "/expenses/:date" do
      status(200)
    end
  end
end
