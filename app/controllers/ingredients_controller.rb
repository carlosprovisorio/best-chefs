class IngredientsController < ApplicationController
  
  def new
    @ingredient = Ingredient.new
  end
  
  def show
  end
  
  def create
   @ingredient = Ingredient.new(ingredient_params)
   if @ingredient.save
     flash[:success] = "You have create a new ingredient succesfully"
     redirect_to  recipes_path
   else
     render 'new'
   end
  end
  
  private
  
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
    
end