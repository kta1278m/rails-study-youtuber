class YoutubechannelsController < ApplicationController
  before_action :set_youtubechannel, only: [:show, :edit, :update, :destroy]

  # GET /youtubechannels
  # GET /youtubechannels.json
  def index
    @youtubechannels = Youtubechannel.all
  end

  # GET /youtubechannels/1
  # GET /youtubechannels/1.json
  def show
  end

  # GET /youtubechannels/new
  def new
    @youtubers = Youtuber.all # [ <youtuber id=1 name=> ]
    @youtubers_hash = @youtubers.collect{ |item| [item.name, item.id] }
    logger.debug(@youtubers_hash)
    @youtubechannel = Youtubechannel.new
  end

  # GET /youtubechannels/1/edit
  def edit
  end

  # POST /youtubechannels
  # POST /youtubechannels.json
  def create
    @youtubechannel = Youtubechannel.new(youtubechannel_params)

    respond_to do |format|
      if @youtubechannel.save
        format.html { redirect_to @youtubechannel, notice: 'Youtubechannel was successfully created.' }
        format.json { render :show, status: :created, location: @youtubechannel }
      else
        format.html { render :new }
        format.json { render json: @youtubechannel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youtubechannels/1
  # PATCH/PUT /youtubechannels/1.json
  def update
    respond_to do |format|
      if @youtubechannel.update(youtubechannel_params)
        format.html { redirect_to @youtubechannel, notice: 'Youtubechannel was successfully updated.' }
        format.json { render :show, status: :ok, location: @youtubechannel }
      else
        format.html { render :edit }
        format.json { render json: @youtubechannel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtubechannels/1
  # DELETE /youtubechannels/1.json
  def destroy
    @youtubechannel.destroy
    respond_to do |format|
      format.html { redirect_to youtubechannels_url, notice: 'Youtubechannel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtubechannel
      @youtubechannel = Youtubechannel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtubechannel_params
      params.require(:youtubechannel).permit(:url, :subscriber, :youtuber_id)
    end
end
