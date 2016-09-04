class Produto < ApplicationRecord
    has_one :geral, as: :serviceable
end
