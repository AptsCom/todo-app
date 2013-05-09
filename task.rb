class Task
  attr_accessor :complete
  attr_reader :description
 
  def initialize(description)
    @description = description
    @complete = false
  end
 
end