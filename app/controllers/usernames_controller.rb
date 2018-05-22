class UsernamesController < ApplicationController
  before_action :set_username, only: [:update, :destroy]

  # GET /usernames
  # GET /usernames.json
  def index
    @usernames = Username.all

    render json: @usernames
  end

  # GET /usernames/1
  # GET /usernames/1.json
  def show
    render json: Username.find(params[:id])
  end

  # POST /usernames
  # POST /usernames.json
  def create
    @username = Username.create(username_params)

    if @username.save
      render json: @username, status: :created
    else
      render json: @username.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usernames/1
  # PATCH/PUT /usernames/1.json
  def update
    if @username.update(username_params)
      head :no_content
    else
      render json: @username.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usernames/1
  # DELETE /usernames/1.json
  def destroy
    @username.destroy

    head :no_content
  end

  def set_username
    @username = Username.find(params[:id])
  end

  def username_params
    params.require(:username).permit(:email, :identifier)
  end

  private :set_username, :username_params
end
