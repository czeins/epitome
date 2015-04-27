class ResumesController < ApplicationController
# before_filter :authorize

  def index
    @user = User.find(params[:user_id])
    @resumes = @user.resumes.all
  end

  def new
     @user = current_user
     @resume = @user.resumes.build
  end

  def create
    @resume = current_user.resumes.build(resume_params)
    if @resume.save
      redirect_to '/'
    else
      render "new"
    end
  end

  def show
    @resume = Resume.find(params[:id])
  end

 def edit
    @user = current_user
    @resume = @user.resumes.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])
      if @resume.update_attributes(resume_params)
        redirect_to 'user_resumes'
      else
        render "edit"
      end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to user_resumes_path
  end

  private
    def resume_params
      params.require(:resume).permit(:education_1, :education_1_school, :education_1_degree, :education_1_major, :education_1_minor, :education_1_duration, :education_2, :education_2_degree, :education_2_major, :education_2_minor, :education_2_duration, :education_3, :education_3_degree, :education_3_major, :education_3_minor, :education_3_duration, :experience_1, :experience_1_position, :experience_1_duration, :experience_1_description, :experience_2, :experience_2_position, :experience_2_duration, :experience_2_description, :experience_3, :experience_3_position, :experience_3_duration, :experience_3_description, :experience_4, :experience_4_position, :experience_4_duration, :experience_4_description, :skills_description)
    end

end