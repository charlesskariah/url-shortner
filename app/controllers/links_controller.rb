class LinksController < ApplicationController
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice] = "Url  shortened successfully"
      redirect_to new_link_path 
    else
      render :new
    end
  end
  
  def index
    @links = Link.all
  end
  
  def show
    if params[:incoming_url]
      @link = Link.find_by(incoming_url: params[:incoming_url])
      if redirect_to @link.outgoing_url, status: @link.status
        @link.clicks += 1
        @link.save
      end
    else
      @link = Link.find(params[:id])
    end
  end
  
  def link_params
    params.require(:link).permit(:incoming_url, :outgoing_url, :status)
  end
  
end
