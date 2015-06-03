class WearsController < ApplicationController
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
