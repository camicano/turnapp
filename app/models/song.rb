class Song < ActiveRecord::Base
  attr_accessible :album_id, :title
  
  has_one :artist, :through => :album
  belongs_to :album
end
