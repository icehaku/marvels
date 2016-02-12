class CharacterController < ApplicationController
  before_action :character

  def index
    render :index, locals: { characters: @character.characters("A") }
  end

  def update_view
    render :index, locals: { characters: @character.characters(params[:letter]) }
  end

  private

  def character
    @character = Character.new
  end
end
