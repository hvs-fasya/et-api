class PeopleController < ApplicationController

  before_action :person_params, only: [:create, :update]
  before_action :set_person, only: [:show, :update, :destroy]


  # GET /people
  def index
    @persons = Person.all
    render json: @persons
  end

  # POST /people
  def create
    
    @persons = Person.create!(person_params)
    render json: @persons, status: :created
  end

  # GET /people/:id
  def show
    render json: @person
  end

  # PUT /people/:id
  def update
    @person.update(person_params)
    render head :no_content
  end

  # DELETE /people/:id
  def destroy
    @person.destroy
    head :no_content
  end

  private

  def person_params
    # whitelist params
    params.permit(:fullname, :email, :contacts)
  end

  def set_person
    @person = Person.find(params[:id])
  end
end
