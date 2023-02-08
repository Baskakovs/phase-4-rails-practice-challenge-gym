class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :memberships

  def total_memebeships
    object.memberships.count
  end

end
