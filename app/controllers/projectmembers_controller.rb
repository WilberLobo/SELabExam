class ProjectmembersController < ApplicationController
  before_action :set_projectmember, only: [:show, :edit, :update, :destroy]

  # GET /projectmembers
  # GET /projectmembers.json
  def index
    @projectmembers = Projectmember.where('project_id = ?', session[:current_project])
 @memebers=User.where('email not in (?)',Projectmember.select("email"))
  end

  # GET /projectmembers/1
  # GET /projectmembers/1.json
  def show
  end

def assignmember
@Projectmember = Projectmember.new(member_params)
@Projectmember.save

end


  # GET /projectmembers/new
  def new
    @projectmember = Projectmember.new
  end

  # GET /projectmembers/1/edit
  def edit
  end

  # POST /projectmembers
  # POST /projectmembers.json
  def create
    @projectmember = Projectmember.new(projectmember_params)

    respond_to do |format|
      if @projectmember.save
        format.html { redirect_to @projectmember, notice: 'Projectmember was successfully created.' }
        format.json { render :show, status: :created, location: @projectmember }
      else
        format.html { render :new }
        format.json { render json: @projectmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projectmembers/1
  # PATCH/PUT /projectmembers/1.json
  def update
    respond_to do |format|
      if @projectmember.update(projectmember_params)
        format.html { redirect_to @projectmember, notice: 'Projectmember was successfully updated.' }
        format.json { render :show, status: :ok, location: @projectmember }
      else
        format.html { render :edit }
        format.json { render json: @projectmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectmembers/1
  # DELETE /projectmembers/1.json
  def destroy
    @projectmember.destroy
    respond_to do |format|
      format.html { redirect_to projectmembers_url, notice: 'Projectmember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projectmember
      @projectmember = Projectmember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projectmember_params
      params.require(:projectmember).permit(:email, :project_id)
    end
end
