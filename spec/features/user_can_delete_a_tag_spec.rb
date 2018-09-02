require 'rails_helper'

describe 'user can delete a tag' do
  describe 'they click the delete link from the index page' do
    it "shows the index page and that tag is not displayed" do
      article = Article.create!(title: "Test Title", body: "Test body")
      tag_1 = article.tags.create!(name: "ruby")
      tag_2 = article.tags.create!(name: "programming")
      visit tag_path(tag_1)
      click_on "Delete"

      expect(page).to have_content("programming")
      expect(page).to_not have_content("ruby")

    end
  end
end
