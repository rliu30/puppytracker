require 'rails_helper'

RSpec.describe "puppies/new", type: :view do
  before(:each) do
    assign(:puppy, Puppy.new(
      :name => "MyString",
      :years => 1,
      :color => "MyString"
    ))
  end

  it "renders new puppy form" do
    render

    assert_select "form[action=?][method=?]", puppies_path, "post" do

      assert_select "input#puppy_name[name=?]", "puppy[name]"

      assert_select "input#puppy_years[name=?]", "puppy[years]"

      assert_select "input#puppy_color[name=?]", "puppy[color]"
    end
  end
end
