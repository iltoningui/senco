class Aluguer < ApplicationRecord
    has_one :geral, as: :serviceable
end
