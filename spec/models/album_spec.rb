require 'rails_helper'

RSpec.describe Album, type: :model do
  subject { create(:Album) }

  it { is_expected.to be_valid }

  context 'validations' do
    it { is_expected.to validate_presence_of(:title)}
  end

  context 'association' do
    it { is_expected.to have_one(:artist_id)}
  end
  
end