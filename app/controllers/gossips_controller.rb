class GossipsController < ApplicationController
  def show
    @gossip = Gossip.last
  end

  def edit
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @username
    else
      render 'edit'
    end
    @gossip.save
  end

  def update
  end

  def new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to @gossip
    else
      render 'new'
    end
  end

  private
    def gossip_params
      params.require(:gossip).permit(:title, :content)
    end
end
