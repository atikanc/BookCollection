# location: spec/feature/integration_spec.rb
require 'rails_helper'

# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Title', with: 'harry potter'
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('harry potter')
#   end
# end

RSpec.describe 'Creating a book with all attributes', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'bald potter'
    fill_in 'Price', with: '123321'
    fill_in 'Published', with: '20180612'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'invalid inputs (3)' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end

  scenario 'invalid inputs (1)' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'bald potter'
    fill_in 'Price', with: '123321'
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
  end
end