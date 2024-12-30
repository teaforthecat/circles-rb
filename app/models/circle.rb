class Circle < ApplicationRecord
  # no model needed on the join table yet
  has_and_belongs_to_many :people
end
