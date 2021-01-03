class EventsController < ApplicationController

  before_action :move_to_index, except: [:index]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to root_path
    else
      redirect_to new_event_path
      flash.now[:alert] = "タイトルを入れてください"
    end
  end

  def show
    @event = Event.find(params[:id])
  end


  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice:"削除しました"
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time, :user_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end



end
