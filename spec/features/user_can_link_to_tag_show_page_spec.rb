require 'rails_helper'

describe 'user_can_link_to_a_tag_show_page' do
  describe 'they can link from the article show page' do
    it 'displays the tag show page with the tag name' do
      article = Article.create!(title: "New Title", body: "New Body")
      tag = Tag.create!(name: "Name")
      article.tags << tag

      visit article_path(article)

      click_link("#{tag.name}")

      expect(current_path).to eq(tag_path(tag))
      expect(page).to have_content("#{tag.name}")
    end
  end
end
