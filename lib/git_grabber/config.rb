require 'json'

module GitGrabber
  class Config
    attr_accessor :interval, :github_personal_token, :backup_directory

    def initialize(conf)
      missing = []
      config = JSON.parse(conf)

      %w{ interval github_personal_token backup_directory }.each do |required|
        if config[required].nil?
          missing << required
        end
      end

      raise "missing required options #{missing.join(', ')}" unless missing.empty?

      @interval              = [config["interval"], 60].max # force 60 seconds min interval
      @github_personal_token = config["github_personal_token"]
      @backup_directory      = config["backup_directory"]
    end
  end
end
