class FoodsController < ApplicationController
  before_action :find_food, only: [:show, :edit, :update, :destroy]

def index
  @foods = Food.all.order('created_at DESC')
  end

def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(foods_params)

    if @food.save
      redirect_to @food
    else
      render "New"
  end
end

  def edit
  end

  def update
    @food = Food.update(foods_params)

    if @food.update
      redirect_to @food
    else
      render "Edit"
  end
end

  def destroy
    @food.destroy
    redirect_to root_path
  end

  private

  def foods_params
    params.require(:food).permit(:title, :description, :company, :rating, :url)
  end

  def find_food
    @food = Food.find(params[:id])
   end
  end
