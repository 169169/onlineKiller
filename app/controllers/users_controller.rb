class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update]
  before_filter :correct_user, only: [:edit, :update]

  # GET /users
  # GET /users.json
  def index
    p 'it is index action'
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  # GET /users/new.json
  def new
    p 'ready to show sign up form'
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    p 'ready to edit.'
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    p 'ready to create a new user.'
    @user = User.new(params[:user])

    if @user.save
      sign_in @user
      flash.now[:success] = "Weclome to online Exam."
      redirect_to @user
    else
      redirect_back_or user
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
  end

  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end
