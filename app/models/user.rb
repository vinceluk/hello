class User < ActiveRecord::Base
    validates_presence_of :username
    validates_uniqueness_of :username
    
    has_many :articles
    
    # check to see if password is blank
    def validate
        errors.add_to_base("Missing password") if password.blank?
    end
    
    def self.authenticate(username, password)
        User.find(:first, :conditions => { :username =>username, :password => password })  
    end
end
