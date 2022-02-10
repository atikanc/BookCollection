require 'rails_helper'

RSpec.describe "publications/new", type: :view do
  before(:each) do
    assign(:publication, Publication.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new publication form" do
    render

    assert_select "form[action=?][method=?]", publications_path, "post" do

      assert_select "input[name=?]", "publication[user_id]"

      assert_select "input[name=?]", "publication[book_id]"
    end
  end
end
