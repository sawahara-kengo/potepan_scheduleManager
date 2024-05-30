class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :start, :end, :allDay, :memo))

    if @schedule.save
      flash[:notice] = "#{@schedule.title}を登録しました"
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