require 'rails_helper'

RSpec.describe Tweet, type: :model do
  let!(:tweet) { build(:tweet) }

  example '正常なファクトリを持つこと' do
    expect(tweet.valid?).to eq true
    expect do
      tweet.save
    end.to change(Tweet, :count).by(1)
  end
end
