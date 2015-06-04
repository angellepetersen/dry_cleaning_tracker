class DryCleansController < ApplicationController
  #before_action :check_if_owner, only: [:read, :edit, :update, :destroy]

  #def check_if_owner
  #dry_clean = DryClean.find(params[:id])
   # if @clothing.user_id != current_user.id
   #   redirect_to "/dry_cleans", notice: "Nope! That's not yours"
   # end
  #end

  def index
    @dry_cleans = DryClean.all
  end

  def show
    @dry_clean = DryClean.find(params[:id])
  end

  def new
    @dry_clean = DryClean.new
  end

  def create
    @dry_clean = DryClean.new


    if @dry_clean.save
      redirect_to "/dry_cleans", :notice => "Dry clean recorded successfully."
    else
      render 'new'
    end
  end

  def record
    @dry_clean = DryClean.new
    @dry_clean.clothing_id = params[:clothing_id]

    @dry_clean.save

    redirect_to "/clothings", :notice => "Dry Clean recorded successfully."

  end

  def edit
    @dry_clean = DryClean.find(params[:id])
  end

  def update
    @dry_clean = DryClean.find(params[:id])

    if @dry_clean.save
      redirect_to "/dry_cleans", :notice => "Dry clean updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dry_clean = DryClean.find(params[:id])

    @dry_clean.destroy

    redirect_to "/dry_cleans", :notice => "Dry clean deleted."
  end
end
