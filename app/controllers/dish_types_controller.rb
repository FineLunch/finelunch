class DishTypesController < ApplicationController
  before_action :set_dish_type, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  def index 
    @dish_types = DishType.includes(:dishes).order(created_at: :DESC)
  end

  def new 
    @dish_type = DishType.new
  end

  def create
    @dish_type = DishType.new(dish_type_params)

    respond_to do |format|
      if @dish_type.save
        format.html { redirect_to dish_types_path, notice: 'Dish type was successfully created.' }
        format.json { render :new, status: :created, location: @dish_type }
      else
        format.html { render :new }
        format.json { render json: @dish_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dish_type.update(dish_type_params)
        format.html { redirect_to dish_types_path, notice: 'Dish type was successfully updated.' }
        format.json { render :edit, status: :created, location: @dish_type }
      else
        format.html { render :edit }
        format.json { render json: @dish_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dish_type.destroy! 
    respond_to do |format|
      format.html { redirect_to dish_types_path, notice: 'Bug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private 
  
  def set_dish_type
      @dish_type = DishType.find(params[:id])
  end

  def dish_type_params
      params.require(:dish_type).permit(:name,:extra)
  end
end
