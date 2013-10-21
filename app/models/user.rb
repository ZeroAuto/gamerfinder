class User < ActiveRecord::Base

  has_many :system_preferences
  has_many :systems, through: :system_preferences


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # takes in a users playing style and finds all players with a style within 1 degree
  def style_match

  end

  def self.search(search)
    if search
      find(:all, :conditions => ['systems Like ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  # takes users' system(s) and finds all users with >1 in common
  #
  

end