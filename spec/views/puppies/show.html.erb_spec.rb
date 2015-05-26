require 'rails_helper'

RSpec.describe "puppies/show", type: :view do
  before(:each) do
    @puppy = assign(:puppy, Puppy.create!(
      :name => "Name",
      :years => 1,
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Color/)
  end
end
