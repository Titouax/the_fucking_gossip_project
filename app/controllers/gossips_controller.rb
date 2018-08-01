class GossipsController < ApplicationController
  def show
    @gossip = Gossip.last
  end

  def edit(username)
    @gossip = Gossip.find_by(:username username)
    @gossip.update(gossip_params)

  end

  def update(gossip_params)

    @gossip.save
    redirect_to @gossip
  end

  def new

  end

  def create
    @gossip = Gossip.new(gossip_params)

    @gossip.save
    redirect_to @gossip
  end

  private
    def gossip_params
      params.require(:gossip).permit(:title, :content)
    end
end
