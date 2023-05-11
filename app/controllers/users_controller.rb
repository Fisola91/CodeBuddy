class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect to user_path(@user), notice: "Profile updated successfully."
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :gender, :city, :bio, :first_name, :last_name, :communities, :topic_interest, :programming_languages, :linkedin_link, :github_link)
  end
end
