require 'rails_helper'

RSpec.describe "Api::V1::Tweets", type: :request do
  let!(:tweet) { create(:tweet) }

  describe '#create' do
    example '正常に作成できること' do
      expect do
        post api_v1_tweets_path, params: { tweet: { content: 'hoge' } }
      end.to change(Tweet, :count).by(1)
    end
  end

  describe '#destroy' do
    example '正常に削除できること' do
      expect do
        delete api_v1_tweet_path(tweet.id)
      end.to change(Tweet, :count).by(-1)
    end
  end

  describe '#update' do
    example '正常に編集できること' do
      put api_v1_tweet_path(tweet.id), params: { tweet: { content: 'updated' } }
      expect(response).to have_http_status(204)
    end
  end
end
