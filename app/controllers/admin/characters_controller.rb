class Admin::CharactersController < ApplicationController
  layout 'admin'
  
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
  
  def edit
    @character = Character.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
  
  def update
    @character = Character.find(params[:id])
    
    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to [:edit, :admin, @character], notice: 'Character was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end