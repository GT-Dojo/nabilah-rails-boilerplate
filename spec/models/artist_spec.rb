require 'rails_helper'

RSpec.describe Artist, type: :model do
  subject { create(:Artist) }

  it { is_expected.to be_valid }

  context 'validations' do
    it { is_expected.to validate_presence_of(:name)}
  end
  
end
