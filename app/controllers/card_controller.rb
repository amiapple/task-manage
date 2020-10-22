class CardController < ApplicationController
  def new
    @card = Card.new
    @list = List.find_by(id: params[:list_id])
  end
end
