class DeptTitle < ApplicationRecord
  has_many :contacts
  
  default_scope { order('lower(name) asc') }
end