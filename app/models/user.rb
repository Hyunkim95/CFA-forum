class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  rolify :before_add => :before_add_method

  validates :user_name, presence: true, length: { minimum: 4,
maximum: 16 }


after_create :assign_default_role

  def assign_default_role
    self.add_role(:member) if self.roles.blank?
  end


  has_many :topics
  has_many :posts
end
