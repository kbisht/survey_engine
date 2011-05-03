class UserSurvey < ActiveRecord::Base
attr_accessible :surveyID, :description

belongs_to :user
default_scope :order => 'user_surveys.created_at DESC'


has_many :questions, :dependent => :destroy
has_many :results, :dependent => :destroy



end
