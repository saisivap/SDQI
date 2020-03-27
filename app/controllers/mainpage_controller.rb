class MainpageController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user,only:[:deluser,:residents]
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
  def residents
    @residents=User.all
    # @residents=User.where(role:"register" ,role:"security").all
  end
  def deluser
    # debugger
    User.find(params[:user_id]).destroy
    redirect_to(residents_path)
  end
  def user_profile
    @user=User.find(params[:user_id])
  end
end
