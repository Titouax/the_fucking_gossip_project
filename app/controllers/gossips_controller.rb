class GossipsController < ApplicationController
  def index

  end

  def update
     @gossip = Gossip.find(params[:id])
     post_params = params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
     @gossip.update(post_params)
     redirect_to @gossip
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end



  def show
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to '/'
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
      params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
    end
end
