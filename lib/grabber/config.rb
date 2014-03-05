require 'json'

module Grabber
  class Config
    attr_accessor :interval, :github_personal_token, :backup_directory

    def initialize(path)
      config = JSON.parse(File.read path)
      %w{ interval github_personal_token backup_directory }.each do |required|
        if config[required].nil?
          raise "missing required config option #{required}"
        end
      end

      self.interval              = config["interval"]
      self.github_personal_token = config["github_personal_token"]
      self.backup_directory      = config["backup_directory"]
    end
  end
end
