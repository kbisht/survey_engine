class Addingindextoq < ActiveRecord::Migration
  def self.up

	change_table :questions do |t|
            t.index :user_survey_id
        end
  end

  def self.down
  end
end
