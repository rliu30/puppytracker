require 'rails_helper'

RSpec.describe Puppy, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe "validation" do
	it "should enforce puppy to have years between 0-10" do
		puppy = Puppy.new(name: 'carina', years: -1)
		puppy.valid?
		expect(puppy.errors[:years].size).to eq 1
	end
end