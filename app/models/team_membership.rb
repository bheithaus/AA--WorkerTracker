# == Schema Information
#
# Table name: team_memberships
#
#  id          :integer          not null, primary key
#  employee_id :integer          not null
#  team_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeamMembership < ActiveRecord::Base
  attr_accessible :employee_id, :team_id

  belongs_to :employee
  belongs_to :team


end
