require 'rails_helper'

RSpec.describe "publications/edit", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit publication form" do
    render

    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do

      assert_select "input[name=?]", "publication[user_id]"

      assert_select "input[name=?]", "publication[book_id]"
    end
  end
end
