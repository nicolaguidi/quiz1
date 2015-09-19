class StaticPagesController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def create
    @feedback = Feedback.create(feedback_params)
    if @feedback.invalid?
      flash[:error] = '<strong>Could not save:</strong> the data you entered is invalid'
    end
    redirect_to root_path
  end

  private

  def feedback_params
    params.require(:feedback).permit(:author, :message)
  end
end
