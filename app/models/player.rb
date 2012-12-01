class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :jersey, :name, :team_id
end
