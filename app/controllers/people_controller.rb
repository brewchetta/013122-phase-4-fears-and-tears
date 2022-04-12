class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :destroy]

  def index
    render json: Person.all
  end

  def show
    # render json: @person, only: [:name], include: [fears: { only: :name }]
    render json: @person, fears: { only: :name }
  end

  def create
    person = Person.create(person_params)
    if person.valid?
      render json: person, status: 201
    else
      render json: { error: person.errors.full_messages }, status: 400
    end
  end

  def destroy
    @person.destroy
  end

  private

  def find_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.permit(:name, :age)
  end

end
