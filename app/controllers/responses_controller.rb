class ResponsesController < ApplicationController
    before_action :response_params, :build_params, only: [:create]

    def index

    end
    
    def new
        @questions = Question.all.limit(10)
        @response = Response.new
    end

    def create
        @responses.each do |response|
            Response.create(response)
        end
        redirect_to responses_path
    end

    private

    def response_params
        params.permit!
    end

    def is_i?(key)
        !!(key =~ /\A[-+]?[0-9]+\z/)
    end

    def build_params
        @responses = Array.new
        params.each do |k, v|
            @responses.push({question_id: k, option_id: v}) if is_i?(k)
        end
    end
end
