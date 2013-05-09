require "rspec"
 
require_relative "list"
require_relative "task"
 
describe List do
  let (:task) {Task.new("Bug Brandon")}
  let (:list) {List.new("ToDos")}


  describe '#add_task' do 
    it 'should add a task to the list' do 
      # tasks << task
      list.add_task(task)
      list.tasks.length.should be >= 1
    end
  end

  describe '#complete_task' do 
    it 'should mark the task as complete' do 
      list.add_task(task)
      list.complete_task(0)
      # list.tasks[0].should be_complete
      list.tasks[0].complete?.should be_true
    end

    it 'should return false if the task doesnt exist' do 
      list.add_task(task)
      list.complete_task(10).should be_false
    end

    it 'should return "success" if the task exists' do 
      list.add_task(task)
      list.complete_task(0).should == "success"
    end
  end

  describe '#delete_task' do 
    it 'should delete a task from list at specific index' do
      list.add_task(task)
      list.delete_task(0)
      list.tasks.length.should == 0
    end
  end

  describe '#completed_tasks' do
    it 'should return completed tasks' do 
      list.add_task(task)
      list.complete_task(0)
      list.completed_tasks.should == [task]
    end
  end

  describe '#incomplete_tasks' do
    it 'should return incompleted tasks' do 
      list.add_task(task)
      list.complete_task(0)
      list.completed_tasks.should == [task]
    end
  end

end