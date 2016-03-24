require "spec_helper"

describe YoutubeSlackbot::ApiRequest do
  let(:klass) { described_class }
  let(:instance) { klass.new(key, channel_id) }
  let(:key) { "some_key" }
  let(:channel_id) { "someChannelId" }

  describe "#api_url_string" do
    subject { instance.api_url_string }

    let(:expected_base_string) do
      "https://www.googleapis.com/youtube/v3/commentThreads?"\
        "part=snippet,replies&"\
        "allThreadsRelatedToChannelId=someChannelId&"\
        "maxResults=100&"\
        "order=time&"\
        "textFormat=plainText&"\
        "key=some_key"
    end

    it { is_expected.to eq expected_base_string }
  end
end
