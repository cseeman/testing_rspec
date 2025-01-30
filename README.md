# Effective Testing with RSpec 3 - Code Examples

This repository contains the code examples for the book "Effective Testing with RSpec 3".

## Expense Tracker

This is a simple expense tracker application that allows you to record and retrieve expenses.

Switched from Sinatra to Hanami (trying to get away with just Hanami API to keep it lightweight). The book is using Sinatra (Effective Testing with RSpec 3, Chapter 4: Starting On the Outside Acceptance Tests).

### Changes

- Config.ru is now pointing to the ExpenseTracker::Api class.
- ExpenseTracker::Api is now a subclass of Hanami::API.
- ExpenseTracker::Api is now using Hanami::Middleware::BodyParser to parse the request body.
- Puma is now used as the web server, with rackup versioning now you need to specify the server.

### Running the application

```
bundle exec rackup
```

### Running the tests

```
bundle exec rspec
```
