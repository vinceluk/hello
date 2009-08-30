class Article < ActiveRecord::Base
    belongs_to :user
    # belongs_to :author, :class_name "User" - look for column author_id and look up entry in users table
    has_many :comments
end
