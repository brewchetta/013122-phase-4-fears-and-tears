class PersonSerializer < ActiveModel::Serializer
  attributes :name, :age, :fears
  has_many :fears, { serializer: PersonFearSerializer }

  # def fears
  #   object.fears.map { |fear| fear.name }
  # end

end
