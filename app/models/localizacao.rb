class Localizacao < ApplicationRecord
    belongs_to :locationable, polymorphic: true
    geocoded_by :full_street_address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
end
