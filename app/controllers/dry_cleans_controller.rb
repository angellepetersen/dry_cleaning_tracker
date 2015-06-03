class DryCleansController < ApplicationController

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
