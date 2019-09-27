class ApplicationController < ActionController::Base
    def home
        render json: {hello: 'world'}.to_json
    end
end
