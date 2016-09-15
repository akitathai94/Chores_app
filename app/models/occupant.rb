class Occupant < ApplicationRecord


def self.search(search)
  
    where("firstname LIKE '%#{search}%'")
  
end


end
