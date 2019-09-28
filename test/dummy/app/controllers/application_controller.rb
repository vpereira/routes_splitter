# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def home
    render json: { hello: 'world' }.to_json
  end
end
