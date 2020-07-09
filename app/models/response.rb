class Response < ApplicationRecord
    belongs_to :question
    has_one :option
end
