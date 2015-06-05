class WearsController < ApplicationController
  #before_action :check_if_owner, only: [:read, :edit, :update, :destroy]

  #def check_if_owner
  #wears = Wear.find(params[:id])
    #if @clothing.user_id != current_user.id
     # redirect_to "/wears", notice: "Nope! That's not yours"
   # end
  #end

  def index
    @wears = Wear.all
  end

  def show
    @wear = Wear.find(params[:id])
  end

  def new
    @wear = Wear.new
  end

  def create
    @wear = Wear.new

    if @wear.save
      redirect_to "/clothings", :notice => "Wear recorded successfully."
    else
      render 'new'
    end
  end

  def record
      @wear = Wear.new
      @wear.clothing_id = params[:clothing_id]

      clothing_count = @wear.clothing.wears.count
      if clothing_count >= @wear.clothing.max_no_wears - 1
         @wear.clothing.needs_cleaning = true
         else
           @wear.clothing.needs_cleaning = false
      end
    @wear.clothing.save
    @wear.save

    redirect_to "/clothings", :notice => "Wear recorded successfully."

  end

  def edit
    @wear = Wear.find(params[:id])
  end

  def update
    @wear = Wear.find(params[:id])
    #@wear.number= Wear.where({ :id => clothings.id}).count #need to finish this part by saying "- Wears happening before last dry clean (column is Wear.updated_at)

    if @wear.save
      redirect_to "/wears", :notice => "Wear updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @wear = Wear.find(params[:id])

    @wear.destroy

    redirect_to "/wears", :notice => "Wear deleted."
  end
end
