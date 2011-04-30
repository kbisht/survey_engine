class AddSurveydescToUserSurveys < ActiveRecord::Migration
  def self.up
    add_column :user_surveys, :description, :string
  end

  def self.down
    remove_column :user_surveys, :description
  end
end
