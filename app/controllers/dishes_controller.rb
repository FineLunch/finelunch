class DishesController < ApplicationController
    before_action :set_dish, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token
    def index 
        @dishes = Dish.includes(:dish_type).order(created_at: :DESC)
    end

    def new 
        @dish = Dish.new
        @dish_types = DishType.all.map { |dish| [dish.name, dish.id] }
    end

    def edit 
        @dish_types = DishType.all
    end

    def create
        @dish = Dish.new(dish_params)

        respond_to do |format|
            if @dish.save
              format.html { redirect_to dishes_path, notice: 'Dish  was successfully created.' }
              format.json { render :new, status: :created, location: @dish }
            else
              format.html { render :new }
              format.json { render json: @dish.errors, status: :unprocessable_entity }
            end
        end

    end

    def update
        respond_to do |format|
            if @dish.update(dish_params)
              format.html { redirect_to dishes_path, notice: 'Dish  was successfully updated.' }
              format.json { render :edit, status: :created, location: @dish }
            else
              format.html { render :edit }
              format.json { render json: @dish.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy 
        @dish.destroy!
        respond_to do |format|
            format.html { redirect_to dishes_path, notice: 'Dish was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    

    private 
    
    def set_dish
        @dish = Dish.includes(:dish_type).find(params[:id])
    end

    def dish_params
        params.require(:dish).permit(:id, :name,:description, :price, :picture_url, :dish_type_id)
    end
end
