class Follow < ActiveRecord::Base
  belongs_to :user   , :class_name => "User"
  belongs_to :target , :class_name => "User"
end
