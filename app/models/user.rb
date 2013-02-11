class User < ActiveRecord::Base
  belongs_to :company

  def full_name
    return (first_name + ' ' + last_name)
  end
end
