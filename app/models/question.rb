class Question < ActiveRecord::Base

belongs_to :user_survey
default_scope :order => 'questions.created_at DESC'


end
