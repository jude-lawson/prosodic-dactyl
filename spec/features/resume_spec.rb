require 'rails_helper'

RSpec.describe 'Resume Page' do
  before :each do
    @owner = JSON.parse(File.read('spec/fixtures/owner.json'))

    visit '/resume'
  end

  describe 'A visitor visits the resume page' do
    it 'they should see the resume heading (the owner\'s name)' do
      expect(page).to have_content(@owner.full_name)
    end

    it 'they should see a list of the owner\'s technical skills' do
      expect(page).to have_css('#skills')
      @owner['profile']['skills']['technical'].each do |skill|
        expect(page).to have_content(skill)
      end
    end

    it 'they should see a list of the owner\'s soft skills' do
      expect(page).to have_css('#skills')
      @owner['profile']['skills']['soft'].each do |skill|
        expect(page).to have_content(skill)
      end
    end

    it 'they should see a section with the owner\'s educational background' do
      expect(page).to have_css('#education')
      @owner['profile']['education'].each do |school|
        expect(page).to have_content(school)
      end
    end

    it 'they should see a section with the owner\'s experience' do
      expect(page).to have_css('#experience')
      @owner['profile']['experience'].each do |experience|
        expect(page).to have_content(experience)
      end
    end

    it 'they should see a section with a list of the owner\'s projects' do
      expect(page).to have_css('#projects')
      @owner['profile']['projects'].each do |project|
        expect(page).to have_content(project)
      end
    end
  end
end
