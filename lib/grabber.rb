require 'grabber/version'
require 'grabber/config'
require 'grabber/api'
require 'grabber/puller'

module Grabber
  class Application
    def config(path)
      @config = Grabber::Config.new path
      @api     = Grabber::Api.new @config.github_personal_token
    end

    def go
      puller = Grabber::Puller.new @config.backup_directory

      while true
        repos = @api.fetch_all

        repos.each do |details|
          puller.update("https://github.com/#{details.full_name}", "#{details.name}.git")
        end

        sleep(@config.interval)
      end
    end
  end
end
