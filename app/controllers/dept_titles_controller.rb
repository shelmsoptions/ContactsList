class DeptTitlesController < ApplicationController
  before_action :set_dept_title, only: [:destroy]
  
  def index
    @dept_titles = DeptTitle.all
  end

  def new
    @dept_title = DeptTitle.new
  end

  def create
    @dept_title = DeptTitle.new( dept_title_params )
    respond_to do |format|
      if @dept_title.save
        format.html { redirect_to dept_titles_path, notice: 'Created!!' }
      else
        redirect_to new_dept_title_path
        format.html { redirect_to dept_titles_path, notice: 'BOTCHED!!' }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @dept_title.destroy
    redirect_to dept_titles_path
  end
  
  private
    def set_dept_title
      @dept_title = DeptTitle.find(params[:id])
    end
    
    def dept_title_params
      params.require( :dept_title ).permit( :name )
    end
end
