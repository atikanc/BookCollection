require 'rails_helper'

RSpec.describe "publications/index", type: :view do
  before(:each) do
    assign(:publications, [
      Publication.create!(
        user_id: 2,
        book_id: 3
      ),
      Publication.create!(
        user_id: 2,
        book_id: 3
      )
    ])
  end

  it "renders a list of publications" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
