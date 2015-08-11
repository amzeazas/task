require('task')
require('rspec')

describe(Task) do
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
end
