class Admin::CharactersController < ApplicationController
  def index
    @characters = Character.order("created_at DESC")
  end

  def new
    @character = Character.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @character = Character.new(params[:character])

    respond_to do |format|
      if @character.save
        format.html { redirect_to admin_characters_url, notice: 'Character was successfully created.'}
      else
        format.html { render action: "new" }
      end
    end
  end
end