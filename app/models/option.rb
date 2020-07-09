class Option < ApplicationRecord
    belongs_to :question
    belongs_to :response
end
