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
    pending("something else getting finished")
        this_should_not_get_executed
  end
  it "subclass must be able to identify with is parent class" do
    pending("something else getting finished")
        this_should_not_get_executed
  end
  it "subclass must be able to identify its class" do
    #
  end
  it "always has a parent associated to it" do
    #
  end
  it "deletes all child classes when parent class destroyed" do
    #
  end
  it "has config in yaml for the type of kids they have" do
    #
  end
  it "has all attributes validated" do
    #
  end
  it "courses are defined with an enum" do
    #
  end
  it "has a max and min age definde in config yaml file" do
    #
  end
end
  describe "name" do
      it "should be required" do
        blank = Factory.build(:my_model, :name => "")
        blank.should_not be_valid
        blank.errors[:name].should include("can't be blank")

        blank.name = "Foo"
        blank.should be_valid
      end

      it "should be longer than 1 character" do
        too_short = Factory.build(:my_model, :name => 'a')
        too_short.should_not be_valid
        too_short.errors[:name].should include("is too short (minimum is 2 characters)")

        too_short.name = 'aa'
        too_short.should be_valid
      end

      it "should be shorter than 101 characters" do
        too_long = Factory.build(:my_model, :name => 'a' * 101)
        too_long.should_not be_valid
        too_long.errors[:name].should include("is too long (maximum is 100 characters)")

        too_long.name = 'a' * 100
        too_long.should be_valid
      end
    end
  end
