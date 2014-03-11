require 'git_grabber/version'
require 'git_grabber/config'
require 'git_grabber/api'
require 'git_grabber/puller'

module GitGrabber
  class Application
    def config(path)
      @config = GitGrabber::Config.new File.read path
      @api    = GitGrabber::Api.new @config.github_personal_token
    end

    def go
      puller = GitGrabber::Puller.new @config.backup_directory

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
