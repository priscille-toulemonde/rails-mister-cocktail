class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to doses_path
  end

def destroy
  @dose = Dose.find(param[:id])
  @dose.destroy
  redirect_to doses_path
end

private

  def dose_params
    params.require(:dose).permit(:name)
  end

end

