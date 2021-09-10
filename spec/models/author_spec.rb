require 'rails_helper'

RSpec.describe Author, type: :model do
  before do
    @invalid_author = Author.new(name: '')
    @valid_author = Author.new(name: 'Dan Brown')
  end

  describe 'name' do 
    it 'validates the presence of a name' do
      author = @invalid_author
      author.valid?
      expect(author.errors[:name]).to include("can't be blank")
    end

    it 'validates the uniqueness of a name' do
      @valid_author.save
      new_author = @valid_author.dup
      new_author.valid?
      expect(new_author.errors[:name]).to include("has already been taken")
    end
  end
end
