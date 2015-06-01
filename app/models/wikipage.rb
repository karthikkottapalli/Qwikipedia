class Wikipage < ActiveRecord::Base
  has_many :versions
end
