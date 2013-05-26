class NgUsersController < ApplicationController
  before_action :set_ng_user, only: [:show, :edit, :update, :destroy]

  # GET /ng_users
  # GET /ng_users.json
  def index
    @ng_users = NgUser.all
  end

  # GET /ng_users/1
  # GET /ng_users/1.json
  def show
  end

  # GET /ng_users/new
  def new
    @ng_user = NgUser.new
  end

  # GET /ng_users/1/edit
  def edit
  end

  # POST /ng_users
  # POST /ng_users.json
  def create
    @ng_user = NgUser.new(ng_user_params)

    respond_to do |format|
      if @ng_user.save
        format.html { redirect_to @ng_user, notice: 'Ng user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ng_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @ng_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ng_users/1
  # PATCH/PUT /ng_users/1.json
  def update
    respond_to do |format|
      if @ng_user.update(ng_user_params)
        format.html { redirect_to @ng_user, notice: 'Ng user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ng_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ng_users/1
  # DELETE /ng_users/1.json
  def destroy
    @ng_user.destroy
    respond_to do |format|
      format.html { redirect_to ng_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ng_user
      @ng_user = NgUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ng_user_params
      params.require(:ng_user).permit(:user_id, :target_user)
    end
end
