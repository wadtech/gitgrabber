require 'spec_helper'

describe GitGrabber::Api do
  before(:each) do
    @api = GitGrabber::Api.new 'my-funky-token'

    stub_request(
      :get, "https://api.github.com/user/repos"
      ).with(
        :headers => {
          'Accept'=>'application/vnd.github.beta+json',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Authorization'=>'token my-funky-token',
          'User-Agent'=>'Octokit Ruby Gem 2.7.2'
        }
      ).to_return(
        :status => 200,
        :body => "fake repo return body thing",
        :headers => {}
      )
  end

  it "fetches all user repositories" do
    repos = @api.fetch_all
    expect(repos).to eq('fake repo return body thing')
  end
end
