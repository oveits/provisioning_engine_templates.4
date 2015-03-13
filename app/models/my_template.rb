class MyTemplate < ActiveRecord::Base

  validates :my_template_name, presence: true, uniqueness: true
end
