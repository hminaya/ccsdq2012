class RosterEntry < ActiveRecord::Base
  belongs_to :roster
  belongs_to :player
  belongs_to :team
  attr_accessible :position
end
