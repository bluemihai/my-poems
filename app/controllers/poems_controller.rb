class PoemsController < ApplicationController
  before_action :set_poem, only: %i[show edit update destroy]

  def index
    @poems = Poem.all
  end

  def show; end

  def new
    @poem = Poem.new
  end

  def edit; end

  def create
    @poem = Poem.new(poem_params)

    respond_to do |format|
      if @poem.save
        format.html { redirect_to poem_url(@poem), notice: 'Poem was successfully created.' }
        format.json { render :show, status: :created, location: @poem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poem.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @poem.update(poem_params)
        format.html { redirect_to poem_url(@poem), notice: 'Poem was successfully updated.' }
        format.json { render :show, status: :ok, location: @poem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poem.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @poem.destroy

    respond_to do |format|
      format.html { redirect_to poems_url, notice: 'Poem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_poem
    @poem = Poem.find(params[:id])
  end

  def poem_params
    params.require(:poem).permit(:title, :text, :date, :location, :meter)
  end
end
