class Set < ApplicationRecord
    belongs_to :series
    has_many :cards, dependent: :destroy
    validates :name, tcg_id: true
    validates :logo: true
end
