require "test_helper"

describe Record do
  let(:record) { Record.new }

  it "must be valid" do
    value(record).must_be :valid?
  end
end
