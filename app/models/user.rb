class User < ActiveRecord::Base
  belongs_to :company
  has_many :follow , :uniq => true

  def full_name
    first_name + ' ' + last_name
  end

  def following?(targetId)
    follow
  end
end
