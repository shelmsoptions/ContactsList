class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new( contact_params )
    @contact.dept_title = DeptTitle.find( @contact.dept_title_id )
    
    respond_to do |format|
      if @contact.save
        format.html { redirect_to contacts_path, notice: 'Created!' }
      else
        render new_contact_path
      end
    end
  end

  def edit
    @contact = Contact.find( params[:id] )
  end

  def update
    @contact = Contact.find( params[:id] )
    if @contact.update( contact_params )
      redirect_to contacts_path
    else
      redirect_to edit_contact_path
    end
  end

  def destroy
    Contact.find( params[:id] ).destroy
    redirect_to contacts_path
  end
  
  private
  
  def contact_params
    params.require(:contact).permit( :first_name, :last_name, :dept_title_id, 
      :phone_extension, :email, :cell_phone )
  end
end
