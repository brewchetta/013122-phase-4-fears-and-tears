class Fear < ApplicationRecord
  belongs_to :person

  scope :is_a_fear_of_chett, -> { filter { |f| f.person.name == "Chett" } }
end
