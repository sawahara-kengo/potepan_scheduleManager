class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all.order(startDay: :asc)
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startDay, :endDay, :allDay, :memo))

    if @schedule.save
      flash[:notice] = "【ID:#{@schedule.id}】#{@schedule.title}を登録しました"
      redirect_to :schedules
    else
      render "new"
    end
  end

  def new
    @schedule = Schedule.new
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(params.require(:schedule).permit(:title, :startDay, :endDay, :allDay, :memo))
      flash[:notice] = "【ID:#{@schedule.id}】#{@schedule.title}の内容を編集しました"
      redirect_to :schedules
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "【ID:#{@schedule.id}】#{@schedule.title}を削除しました"
    redirect_to :schedules
  end

end
