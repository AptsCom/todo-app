require "rspec"
 
require_relative "list"
require_relative "task"
 
describe List do
  let (:task) {Task.new("Bug Brandon")}
  let (:list) {List.new("ToDos")}


end