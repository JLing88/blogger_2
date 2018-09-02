require 'rails_helper'

describe 'user can see all tags' do
  describe 'they visit /tags' do
    it 'should show a list of all tags' do
      article = Article.create!(title: "New Title", body: "New Body")
      article.tags.create(name: "ruby")
      article.tags.create(name: "programming")

      visit tags_path

      expect(page).to have_content("ruby")
      expect(page).to have_content("programming")
    end
  end
end
