class GossipsController < ApplicationController
  def show
    @gossip = Gossip.last
  end

  def new
  end

  def create
    @gossip = Gossip.new(gossip_params)

    @gossip.save
    redirect_to @gossip
  end
end

private
  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
