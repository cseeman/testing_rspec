# frozen_string_literal: true

require "bundler/setup"
require_relative "expense_tracker/app/api"

run ExpenseTracker::Api.new
