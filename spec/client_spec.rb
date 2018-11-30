require 'webmock/rspec'

RSpec.describe Obniz do
  describe '#post' do
    let(:client) { Obniz::Client.new(obniz_id: obniz_id, access_token: access_token) }
    let(:params) { [{ display: { clear: true, text: 'hogehoge' } }] } 
    subject { client.post(params) }
    context 'not found' do
      before do
        WebMock.enable!
        WebMock.stub_request(:post, 'https://obniz.io/obniz/1234-5678/api/1')
               .to_return(
                 body: JSON.generate({ error: 'obniz not found'}),
                 status: 403,
                 headers: { 'Content-Type' => 'application/json' }
               )
      end
      let(:obniz_id) { '1234-5678' }
      let(:access_token) { 'xxxxxx' }
      it { expect(subject.status).to eq 403 }
      it { expect(subject.body).to eq "{\"error\":\"obniz not found\"}" }
    end
  end
end
