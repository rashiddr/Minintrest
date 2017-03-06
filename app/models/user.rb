#
# User Model
#
# @author rashid
#
class User < ApplicationRecord
  rolify
  after_create :assign_default_role, :create_user_node
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum gender: [:male, :female]

  # Assign default roles
  def assign_default_role
    add_role :user if roles.blank?
  end

  # Creating new user node
  def create_user_node
    if male?
      Groom.create(user_id: id)
    else
      Bride.create(user_id: id)
    end
  end
end
