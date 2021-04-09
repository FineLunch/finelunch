class DishTypesController < ApplicationController
  before_action :set_dish_type, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  def index 
    @dish_types = DishType.order(created_at: :DESC)
  end

  def new 
    @dish_type = DishType.new
  end

  def create
    @dish_type = DishType.new(dish_type_params)

    if @dish_type.save
      redirect_to dish_types_path, flash: { success: "Les données ont bien été enregistrées." }
    else 
      render :new
    end
  end

  def update
    if @dish_type.update(dish_type_params)
      redirect_to dish_types_path, flash: { success: "Les données ont bien été enregistrées." }
    else 
      render :edit
    end
  end

  def destroy 
    if @dish_type.destroy!
      redirect_to dish_types_path, flash: { success: "Les données ont bien été enregistrées." }
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
