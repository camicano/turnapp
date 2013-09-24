class Artist < ActiveRecord::Base
  attr_accessible :bio, :name
  
  has_many :albums
  has_one :songs, :through => :album
end
