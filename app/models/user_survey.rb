class UserSurvey < ActiveRecord::Base
attr_accessible :surveyID

belongs_to :user

default_scope :order => 'user_surveys.created_at DESC'

end
