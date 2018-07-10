require 'rails_helper'

RSpec.describe 'Root Page' do
  describe 'A visitor visits the root page' do
    it 'they should see a welcome message' do
      visit '/'

      expect(page).to have_content('Welcome to Jude\'s Site!')
    end

    it 'they should see a the navigation bar' do
      visit '/'

      expect(page).to have_css('#navigation')
      expect(page).to have_link('Projects')
      expect(page).to have_link('Resume')
      expect(page).to have_link('Home')
      expect(page).to have_link('Login')
    end
  end
end
