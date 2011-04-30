class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :user_survey_id
      t.integer :question_id
      t.integer :count1
      t.integer :count2
      t.integer :count3
      t.integer :count4
      t.integer :count5
      t.integer :scount

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
