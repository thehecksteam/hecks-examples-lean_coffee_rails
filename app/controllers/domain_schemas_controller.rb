class DomainSchemasController < ApplicationController
  def show
    @schema = HecksApp::DOMAIN_SCHEMA
  end
end