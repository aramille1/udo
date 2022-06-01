class ProfilesController < ApplicationController
  def show
    @profile = current_user.profile
  end


  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.update!(profile_params)
    redirect_to '/profile'
  end

  private

  def profile_params
    params.require(:profile).permit(:date_of_birth, :gender, :allergies, :medication, :dosage, :times_per_day, :vaccinations, :blood_type, :race, :user_id  )
  end
end
