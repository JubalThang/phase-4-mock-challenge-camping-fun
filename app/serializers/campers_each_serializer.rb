class CampersEachSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  has_many :activities

  # def details
  #   camper = Camper.find(params[:id])
  #   render json: camper, serializer: 
  # end
end
