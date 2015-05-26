require 'rails_helper'

RSpec.describe "puppies/edit", type: :view do
  before(:each) do
    @puppy = assign(:puppy, Puppy.create!(
      :name => "MyString",
      :years => 1,
      :color => "MyString"
    ))
  end

  it "renders the edit puppy form" do
    render

    assert_select "form[action=?][method=?]", puppy_path(@puppy), "post" do

      assert_select "input#puppy_name[name=?]", "puppy[name]"

      assert_select "input#puppy_years[name=?]", "puppy[years]"

      assert_select "input#puppy_color[name=?]", "puppy[color]"
    end
  end
end
