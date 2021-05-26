class NoticesController < ApplicationController
  def index
    @notices = Notice.all 
  end

  def new
    @notice = Notice.new 
  end

  def create
    Notice.create(notice_params)
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def show
    @notice = Notice.find(params[:id])
  end

  def update
    notice = Notice.find(params[:id])
    notice.update(notice_params)
  end

  def destroy
    notice = Notice.find(params[:id])
    notice.destroy
  end

  private
  def notice_params
    params.require(:notice).permit(:title, :name, :detail, :category)
  end
end
