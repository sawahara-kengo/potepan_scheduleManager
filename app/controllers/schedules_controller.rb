class SchedulesController < ApplicationController
  def schedule_params
    params.require(:schedule).permit(:title_column, :start_date, :end_date, :allday_enabled, :memo_type)
  end

  def index
    @schedules = Schedule.all
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      flash[:notice] = @schedule.title_column if @schedule.title_column.present?
      redirect_to :schedules
    else
      render "new"
    end
  end

  def new
    @schedule = Schedule.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end