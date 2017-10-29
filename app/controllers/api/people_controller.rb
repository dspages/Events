class Api::PeopleController < ApplicationController

  def index
    render json: Person.all
  end

  private

end
