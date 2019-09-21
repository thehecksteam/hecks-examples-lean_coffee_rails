require 'hecks-adapters/dynamodb'
Domain = HecksApp::ApplicationPort
Domain.config do
  domain LeanCoffee
  driven_adapter :Dynamodb
end
Hecks::ActiveModel.decorate
