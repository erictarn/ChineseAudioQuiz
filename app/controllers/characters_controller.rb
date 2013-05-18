class CharactersController < ApplicationController
  def show
    @guessed_character = Character.find(params[:id])
    @character = Character.next_quiz
    @guess = Guess.new(:character_id => @character.id)
  end
end