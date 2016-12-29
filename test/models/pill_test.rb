require "test_helper"

describe Pill do
  let(:pill) { Pill.new }

  it "must be valid" do
    value(pill).must_be :valid?
  end
end
