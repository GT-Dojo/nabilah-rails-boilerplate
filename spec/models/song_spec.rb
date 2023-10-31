require 'rails_helper'

RSpec.describe Song, type: :model do
  subject { create(:Song) }

  it { is_expected.to be_valid }

  context 'validations' do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:duration)}
  end

  context 'association' do
    it { is_expected.to have_many(:artist_id)}
    it { is_expected.to have_one(:album_id)}
  end

end
