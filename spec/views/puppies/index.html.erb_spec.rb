require 'rails_helper'

RSpec.describe "puppies/index", type: :view do
  before(:each) do
    assign(:puppies, [
      Puppy.create!(
        :name => "Name",
        :years => 1,
        :color => "Color"
      ),
      Puppy.create!(
        :name => "Name",
        :years => 1,
        :color => "Color"
      )
    ])
  end

  it "renders a list of puppies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
