class ModeratorsController < ApplicationController
  before_action :set_moderator, only: [:show, :edit, :update, :destroy]

  # GET /moderators
  # GET /moderators.json
  def index
    @moderators = Moderator.all
  end

  # GET /moderators/1
  # GET /moderators/1.json
  def show
  end

  # GET /moderators/new
  def new
    @moderator = Moderator.new
  end

  # GET /moderators/1/edit
  def edit
  end

  # POST /moderators
  # POST /moderators.json
  def create
    @moderator = Moderator.new(moderator_params)

    respond_to do |format|
      if @moderator.save
        format.html { redirect_to @moderator, notice: 'Moderator was successfully created.' }
        format.json { render :show, status: :created, location: @moderator }
      else
        format.html { render :new }
        format.json { render json: @moderator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moderators/1
  # PATCH/PUT /moderators/1.json
  def update
    respond_to do |format|
      if @moderator.update(moderator_params)
        format.html { redirect_to @moderator, notice: 'Moderator was successfully updated.' }
        format.json { render :show, status: :ok, location: @moderator }
      else
        format.html { render :edit }
        format.json { render json: @moderator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moderators/1
  # DELETE /moderators/1.json
  def destroy
    @moderator.destroy
    respond_to do |format|
      format.html { redirect_to moderators_url, notice: 'Moderator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_moderator
      @moderator = Moderator.find(params[:id])
    end

    def moderator_params
      params.require(:moderator).permit(:first_name, :last_name, :email_address, :mission_id, :username, :password)
    end
end
