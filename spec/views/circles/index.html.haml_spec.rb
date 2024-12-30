require 'rails_helper'

RSpec.describe "circles/index", type: :view do
  before(:each) do
    assign(:circles, [
      Circle.create!(
        slug: "Slug",
        name: "Name",
        description: "Description"
      ),
      Circle.create!(
        slug: "Slug",
        name: "Name",
        description: "Description"
      )
    ])
  end

  it "renders a list of circles" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
