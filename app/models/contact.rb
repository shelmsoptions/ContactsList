class Contact < ApplicationRecord
  belongs_to :dept_title
  
  default_scope { order('lower(first_name) asc') }
end
