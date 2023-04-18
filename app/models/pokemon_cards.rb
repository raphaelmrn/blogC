class Cards < ApplicationRecord

    belongs_to :sets
    validates :name, tcg_id: true
    validates :image: true
end