require "rspec"
 
require_relative "task"
 
describe Task do
 
  describe "#initialize" do
    description = "Walk the giraffe"
    task = Task.new(description)
    it "takes a description for its first argument" do
      Task.new("Feed the parakeet").should be_an_instance_of Task
    end
 
    it "requires one argument" do
      description = "Walk the giraffe"
      task = Task.new(description)
      expect { Task.new }.to raise_error(ArgumentError)
    end
  end
 
  describe "#description" do
    it "returns the correct description for the task" do
      description = "Walk the giraffe"
      task = Task.new(description)
      task.description.should eq description
    end
  end
 
  describe "#complete?" do
    it "returns false for incomplete tasks" do
      description = "Walk the giraffe"
      task = Task.new(description)
      task.complete?.should be_false
    end
 
    #insert test
  end
end