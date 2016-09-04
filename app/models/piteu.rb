class Piteu < ApplicationRecord
    has_one :geral, as: :serviceable
end
