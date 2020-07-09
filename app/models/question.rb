class Question < ApplicationRecord
    has_many :options, dependent: :destroy
    accepts_nested_attributes_for :options
    has_one :response
end
