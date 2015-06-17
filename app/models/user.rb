class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

          def admin?
    	 	admin
		  end

    has_attached_file :avatar, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "60x60#" }, default_url: "/system/default/default.png"
 	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
