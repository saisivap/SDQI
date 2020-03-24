class MainpageController < ApplicationController
  before_action :authenticate_user!
  # debugger
  def main_register
    @complaints=Complaint.where("solved":false).all
  end
  def solve
    @complaint=Complaint.find(params[:id])
    @complaint.solved=true
    @complaint.solved_time=Time.new
    @complaint.save
    redirect_to(root_path)
  end
end
