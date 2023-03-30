class HomeController < ApplicationController
  def index
    @home = Home.all
    render json: @home
  end

  def new; end

  
  def create
    @titles = Home.new(home_params)
    if @titles.save
      render json: { message: 'home is created successfully' }, status: 200
    else
      render json: { message: 'home is not created ' }
    end
  end

  private

  def home_params
    params.permit(:name, :title)
  end
end

