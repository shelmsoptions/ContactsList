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
    
  end

  def update
  end

  def destroy
  end
  
  private
  def contact_params
    params.require( :contact ).permit( :first_name, :last_name, :dept_title_id, 
      :phone_extension, :email, :cell_phone )
  end
end
