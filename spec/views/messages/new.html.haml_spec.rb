require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      content: "MyString",
      content_type: "MyString"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input[name=?]", "message[content]"

      assert_select "input[name=?]", "message[content_type]"
    end
  end
end
