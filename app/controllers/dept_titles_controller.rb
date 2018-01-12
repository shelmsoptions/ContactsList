class DeptTitlesController < ApplicationController
  
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
    @dept_title = DeptTitle.find( params[:id] )
  end

  def update
    @dept_title = DeptTitle.find( params[:id] )
    if @dept_title.update( dept_title_params )
      redirect_to dept_titles_path
    else
      redirect_to edit_dept_title_path
    end
  end

  def destroy
    DeptTitle.find( params[:id] ).destroy
    redirect_to dept_titles_path
  end
  
  private
  
    def dept_title_params
      params.require( :dept_title ).permit( :name )
    end
end
