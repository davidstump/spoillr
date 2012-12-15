class Friendship < ActiveRecord::Base
  belongs_to :user
  attr_accessible :username, :user_id
end
