class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :occupant
  #belongs_to :comment
end
