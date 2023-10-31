require 'rails_helper'

RSpec.describe Publisher, type: :model do
  subject { create(:Publisher) }

  it { is_expected.to be_valid }

  context 'validations' do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:address)}
    it { is_expected.to validate_presence_of(:website)}
  end

  context 'association' do
    it { is_expected.to have_many(:song_id)}
  endend
