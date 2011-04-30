class CreateUserSurveys < ActiveRecord::Migration
  def self.up
    create_table :user_surveys do |t|
      t.integer :surveyID
      t.integer :user_id

      t.timestamps
    end

	add_index :user_surveys, :user_id
  end

  def self.down
    drop_table :user_surveys
  end
end
