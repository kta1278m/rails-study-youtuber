class YoutubersController < ApplicationController
  before_action :set_youtuber, only: [:show, :edit, :update, :destroy]

  # GET /youtubers
  # GET /youtubers.json
  def index
    @youtubers = Youtuber.all
  end

  # GET /youtubers/1
  # GET /youtubers/1.json
  def show
  end

  # GET /youtubers/new
  def new
    @youtuber = Youtuber.new
  end

  # GET /youtubers/1/edit
  def edit
  end

  # POST /youtubers
  # POST /youtubers.json
  def create
    @youtuber = Youtuber.new(youtuber_params)

    respond_to do |format|
      if @youtuber.save
        format.html { redirect_to @youtuber, notice: 'Youtuber was successfully created.' }
        format.json { render :show, status: :created, location: @youtuber }
      else
        format.html { render :new }
        format.json { render json: @youtuber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youtubers/1
  # PATCH/PUT /youtubers/1.json
  def update
    respond_to do |format|
      if @youtuber.update(youtuber_params)
        format.html { redirect_to @youtuber, notice: 'Youtuber was successfully updated.' }
        format.json { render :show, status: :ok, location: @youtuber }
      else
        format.html { render :edit }
        format.json { render json: @youtuber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtubers/1
  # DELETE /youtubers/1.json
  def destroy
    @youtuber.destroy
    respond_to do |format|
      format.html { redirect_to youtubers_url, notice: 'Youtuber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtuber
      @youtuber = Youtuber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtuber_params
      params.require(:youtuber).permit(:name, :age)
    end
end
