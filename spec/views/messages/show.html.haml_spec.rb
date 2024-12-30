require 'rails_helper'

RSpec.describe "messages/show", type: :view do
  before(:each) do
    assign(:message, Message.create!(
      content: "Content",
      content_type: "Content Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Content Type/)
  end
end
