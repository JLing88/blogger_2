require 'rails_helper'

describe 'user edits an article' do
  describe 'they link from an article show page' do
    describe 'they edit title and body' do
      it 'shows the edited article' do
        article = Article.create!(title: "Title", body: "Body")

        visit article_path(article)

        click_link "Edit"
        fill_in "article[title]", with: "New Title"
        fill_in "article[body]", with: "New Body"
        click_on "Update"

        expect(page).to have_content("New Title")
        expect(page).to have_content("New Body")
      end
    end
  end
end
