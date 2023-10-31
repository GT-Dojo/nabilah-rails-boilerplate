require 'rails_helper'

RSpec.describe Collaborator, type: :model do
  subject { create(:Collaborator) }

  it { is_expected.to be_valid }

  context 'validations' do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:role)}
  end

  context 'association' do
    it { is_expected.to have_many(:artist_id)}
    it { is_expected.to have_many(:song_id)}
  end
  
end
