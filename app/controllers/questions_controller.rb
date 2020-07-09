class QuestionsController < ApplicationController

    def new
        @question = Question.all.limit(10)
    end
end
