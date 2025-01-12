require 'rails_helper'

RSpec.describe "messages/edit", type: :view do
  let(:message) {
    Message.create!(
      content: "MyString",
      content_type: "MyString"
    )
  }

  before(:each) do
    assign(:message, message)
  end

  it "renders the edit message form" do
    render

    assert_select "form[action=?][method=?]", message_path(message), "post" do

      assert_select "input[name=?]", "message[content]"

      assert_select "input[name=?]", "message[content_type]"
    end
  end
end
