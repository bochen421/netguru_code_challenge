require 'rails_helper'

describe Citation, type: :model do
  it 'has a valid factory' do
    expect(build(:citation)).to be_valid
  end

  it 'requires body text' do
    expect(build(:citation, body: '')).not_to be_valid
  end
end
