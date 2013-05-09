class List
  attr_reader :title, :tasks
 
  def initialize(title, tasks = [])
    @title = title
    @tasks = tasks
  end
end