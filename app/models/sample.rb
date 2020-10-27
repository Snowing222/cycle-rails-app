class Sample < ApplicationRecord
    belongs_to :product
    has_one :status
end
