class Person < ApplicationRecord
  # no model needed on the join table yet
  has_and_belongs_to_many :circles
  has_many :people, through: :circles
  has_one :user

  def connections
    people.without(self)
  end
end
