class Product < ApplicationRecord
    belongs_to :production_partner
    belongs_to :design_partner
    belongs_to :manufacturer_partner
    has_many :samples
end
