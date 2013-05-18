class GuessesController < ApplicationController
  def new
    @character = Character.next_quiz
    @guess = Guess.new(:character_id => @character.id)
  end

  def create
    @guess = Guess.new(params[:guess])
    @character = @guess.character

    respond_to do |format|
      if @guess.hanzi == @guess.character.hanzi
        @status = "correct"
        format.html { redirect_to new_guess_url, notice: 'Good job!' }
      else
        @status = "wrong"
        format.html {
          flash[:notice] = 'Incorrect.'
          render action: "new"
        }
      end
    end
  end
end