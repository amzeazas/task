require('task')
require('rspec')

describe(Task) do
  before() do
    Task.clear()
  end
  
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("watch Doctor Who")
      expect(test_task.description()).to(eq("watch Doctor Who"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("exterminate the daleks")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tasks") do
      Task.new("exterminate the daleks").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
