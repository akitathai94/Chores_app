class Occupant < ApplicationRecord


def self.search(search)
  
    where("firstname LIKE '%#{search}%' OR lastname LIKE '%#{search}%'")
  
end


end
