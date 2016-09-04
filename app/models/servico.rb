class Servico < ApplicationRecord
    has_one :geral, as: :serviceable
end
