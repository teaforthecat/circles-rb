require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        content: "Content",
        content_type: "Content Type"
      ),
      Message.create!(
        content: "Content",
        content_type: "Content Type"
      )
    ])
  end

  it "renders a list of messages" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Content".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Content Type".to_s), count: 2
  end
end
