require 'rails_helper'

RSpec.describe Genus, type: :model do
  context 'name is missing' do
    it 'is not valid' do
      genus = Genus.new(name: nil)

      expect(genus).not_to be_valid
    end
  end

  context 'name is not unique' do
    it 'is not valid' do
      other_genus = Genus.create!(name: 'Bison')
      genus = Genus.new(name: 'Bison')

      expect(genus).not_to be_valid
    end
  end
end
