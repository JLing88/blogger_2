require 'rails_helper'

describe Comment, type: :model do
  describe 'validtions' do
    it {should validate_presence_of(:author_name)}
    it {should validate_presence_of(:body)}
  end

  describe 'relationships' do
    it {should belong_to(:article)}
  end
end
