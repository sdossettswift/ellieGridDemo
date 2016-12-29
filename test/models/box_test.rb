require "test_helper"

describe Box do
  let(:box) { Box.new }

  it "must be valid" do
    value(box).must_be :valid?
  end
end
