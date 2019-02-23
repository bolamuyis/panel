class CohortsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @cohorts = Cohort.all 
  end
  def new
    @cohort = Cohort.new
  end
  def create
    Cohort.create(cohort_params)
    redirect_to cohorts_path
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)
    redirect_to cohorts_path
  end
  def destroy
    cohort = Cohort.find(params[:id])
    cohort.destroy
    redirect_to cohorts_path
  end
  private
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :teacher)
  end
end

