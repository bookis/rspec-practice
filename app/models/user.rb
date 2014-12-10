class User < ActiveRecord::Base
  validates :email, format: {with: /@/}
end
