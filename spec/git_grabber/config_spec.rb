require 'spec_helper'

describe GitGrabber::Config do
  it "raises an error if an incomplete config is provided" do
    expect {GitGrabber::Config.new '{}'}.to raise_error(RuntimeError)
  end

  it "lists missing config options" do
    expect do
      GitGrabber::Config.new '{}'
    end.to raise_error("missing required options interval, github_personal_token, backup_directory")
  end

  describe "accessors" do
    before(:each) do
      @config = GitGrabber::Config.new '{"interval": 789456,"github_personal_token": "blahblahblah", "backup_directory": "/my/backups/dir"}'
    end

    it "provides access to interval" do
      expect(@config.interval).to eq(789456)
    end
    it "provides access to github_personal_token" do
      expect(@config.github_personal_token).to eq('blahblahblah')
    end
    it "provides access to backup_directory" do
      expect(@config.backup_directory).to eq('/my/backups/dir')
    end
  end
end
