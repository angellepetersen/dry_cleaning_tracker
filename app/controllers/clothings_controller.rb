class ClothingsController < ApplicationController
  before_action :check_if_owner, only: [:read, :edit, :update, :destroy]


  def check_if_owner
  clothing = Clothing.find(params[:id])
  clothing.user_id = current_user.id
    if clothing.user_id != current_user.id
      redirect_to "/clothings", notice: "Nope! That's not yours"
    end
  end


  def index
    @clothings = Clothing.all
  end

  def show
    @clothing = Clothing.find(params[:id])
  end

  def new
    @clothing = Clothing
    .new
  end

  def create
    @clothing = Clothing.new
    @clothing.user_id = current_user.id
    @clothing.needs_cleaning = params[:needs_cleaning]
    @clothing.max_no_wears = params[:max_no_wears]
    @clothing.description = params[:description]

    if @clothing.save
      redirect_to "/clothings", :notice => "Clothing item created successfully."
    else
      render 'new'
    end


  end

  def edit
    @clothing = Clothing.find(params[:id])
  end

  def update
    @clothing = Clothing.find(params[:id])
    @clothing.user_id = current_user.id
    @clothing.max_no_wears = params[:max_no_wears]

    if @clothing.save
      redirect_to "/clothings", :notice => "Clothing details updated successfully."
    else
      render 'edit'
    end
  end

  def drycleaninglist
    @clothings = Clothing.all
  end

  def destroy
    @clothing = Clothing.find(params[:id])
    @clothing.destroy


    redirect_to "/clothings", :notice => "Clothing deleted."
  end
end
