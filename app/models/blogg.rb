class Blogg < ActiveRecord::Base
  has_many :comments
end
