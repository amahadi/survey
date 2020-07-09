class Question < ApplicationRecord
    has_many :options, dependent: :destroy
    has_one :response
end
