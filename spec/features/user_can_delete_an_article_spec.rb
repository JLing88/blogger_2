require 'rails_helper'

describe 'user deletes an article' do
  describe 'they link from the show page' do
    it 'displays all articles without the deleted article' do
      article_3 = Article.create!(title: "Title 3", body: "Body 3")
      article_2 = Article.create!(title: "Title 2", body: "Body 2")

      visit article_path(article_3)
      click_link "Delete"

      expect(current_path).to eq(articles_path)

      expect(page).to have_content(article_2.title)
      expect(page).to_not have_content(article_3.title)
    end
  end
end
