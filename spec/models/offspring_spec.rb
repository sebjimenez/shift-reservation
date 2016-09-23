require 'rails_helper'

RSpec.describe Offspring, type: :model do
  it "should have attribute type" do
    expect(subject).to have_attribute :type
  end

  it "should initialize successfully as an instance of the described class" do
    expect(subject).to be_a_kind_of described_class
  end

  it "should identify its parent class" do
  end

  it "should not exist without parent" do
    #
  end
end
