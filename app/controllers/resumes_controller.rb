class ResumesController < ApplicationController
# before_filter :authorize

  def index
    User.find(params[:id]).resumes
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume =  current_user.resumes.build(resume_params)
    if @resume.save
      redirect_to '/'
    else
      render "new"
    end
  end

  def show
    @resume = Resume(params[:resume_id])
  end

 def edit
    # @resume = Resume.find(params[:id])
  end

  def update
  #   @resume = Resume.find(params[:id])
  #     if @Resume.update_attributes(resume_params)
  #       redirect_to resumes_path
  #     else
  #       render "edit"
  #     end
  end

  def destroy
    # @resume = Resume.find(params[:id])
    # @resume.destroy
    # redirect_to resumes_path
  end

  private
    def resume_params
      params.require(:resume).permit(:user, :education, :jobs, :skills, :user_id)
    end

end