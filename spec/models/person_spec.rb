require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:circle) { create(:circle) }
  let(:person2) { create(:person) }

  it "has connections through circles" do
    circle.people << person2
    subject.circles << circle
    subject.save

    result = subject.connections.count
    expect(result).to eql 1
  end
end
