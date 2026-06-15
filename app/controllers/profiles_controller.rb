class ProfilesController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :authorize_user!, only: [:new, :create, :edit, :update]

  def show
    @profile = @user.profile
  end

  def new
    @profile = @user.build_profile
  end

  def create
    @profile = @user.build_profile(profile_params)
    if @profile.save
      redirect_to user_profile_path(@user), notice: "Profil oluşturuldu."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @profile = @user.profile
  end

  def update
    @profile = @user.profile
    if @profile.update(profile_params)
      redirect_to user_profile_path(@user), notice: "Profil güncellendi."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.friendly.find(params[:user_id])
  end

  def authorize_user!
    redirect_to root_path, alert: "Yetkiniz yok." unless @user == current_user
  end

  def profile_params
    params.require(:profile).permit(:bio, :github, :twitter, :linkedin, :image)
  end
end