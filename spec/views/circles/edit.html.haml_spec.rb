require 'rails_helper'

RSpec.describe "circles/edit", type: :view do
  let(:circle) {
    Circle.create!(
      slug: "MyString",
      name: "MyString",
      description: "MyString"
    )
  }

  before(:each) do
    assign(:circle, circle)
  end

  it "renders the edit circle form" do
    render

    assert_select "form[action=?][method=?]", circle_path(circle), "post" do

      assert_select "input[name=?]", "circle[slug]"

      assert_select "input[name=?]", "circle[name]"

      assert_select "input[name=?]", "circle[description]"
    end
  end
end
