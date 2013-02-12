class User < ActiveRecord::Base
  belongs_to :company
  has_many :follow , :uniq => true, :through => :follow

  def full_name
    first_name + ' ' + last_name
  end
end
