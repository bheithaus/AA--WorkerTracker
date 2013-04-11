class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id
end
