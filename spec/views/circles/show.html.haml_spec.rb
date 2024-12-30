require 'rails_helper'

RSpec.describe "circles/show", type: :view do
  before(:each) do
    assign(:circle, Circle.create!(
      slug: "Slug",
      name: "Name",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
