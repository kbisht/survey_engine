class AddOp1ToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :op1, :string
    add_column :questions, :op2, :string
    add_column :questions, :op3, :string
    add_column :questions, :op4, :string
    add_column :questions, :op5, :string
    add_column :questions, :ans, :integer
  end

  def self.down
    remove_column :questions, :ans
    remove_column :questions, :op5
    remove_column :questions, :op4
    remove_column :questions, :op3
    remove_column :questions, :op2
    remove_column :questions, :op1
  end
end
