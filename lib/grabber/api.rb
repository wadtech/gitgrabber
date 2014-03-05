module Grabber
  class Api
    require 'octokit'

    def initialize(token)
      @api = Octokit::Client.new access_token: token
    end

    def fetch_all
      @api.repositories
    end
  end
end
