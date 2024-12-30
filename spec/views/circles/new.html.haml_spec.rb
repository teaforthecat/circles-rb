require 'rails_helper'

RSpec.describe "circles/new", type: :view do
  before(:each) do
    assign(:circle, Circle.new(
      slug: "MyString",
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new circle form" do
    render

    assert_select "form[action=?][method=?]", circles_path, "post" do

      assert_select "input[name=?]", "circle[slug]"

      assert_select "input[name=?]", "circle[name]"

      assert_select "input[name=?]", "circle[description]"
    end
  end
end
