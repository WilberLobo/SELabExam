class AddMemberController < ApplicationController
def assignmember
@Projectmember = Projectmember.new(projectmember_params)
@Projectmember.save
redirect_to(:controller => 'projectmembers', :action => 'index')

end

private
  def projectmember_params
      params.require(:projectmember).permit(:email, :project_id)
    end
end
