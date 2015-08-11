require('task')
require('rspec')

describe(Task) do
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("watch Doctor Who")
      expect(test_task.description()).to(eq("watch Doctor Who"))
    end
  end
end
