require 'hecks-adapters/dynamodb'
Domain = HecksApp::ApplicationPort
Domain.config do
  domain LeanCoffee
  adapter :Dynamodb
end
Hecks::ActiveModel.decorate
