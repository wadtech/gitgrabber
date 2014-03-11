require 'spec_helper'

describe GitGrabber::Puller do
  describe "update" do
    it "clones if the project is not already present" do
      @puller = GitGrabber::Puller.new '/my/backup/directory'

      @puller.should_receive(:'`')
             .with("git clone --bare ssh://git@github.com:wadtech/gitgrabber.git /my/backup/directory/gitgrabber")
             .and_return("yay!")
      @puller.update('ssh://git@github.com:wadtech/gitgrabber.git', 'gitgrabber')
    end

    it "fetches all from upstream if it is already present" do
      @puller = GitGrabber::Puller.new File.join File.dirname(__FILE__), '../fixtures/'

      @puller.should_receive(:'`')
             .with("git fetch --all")
             .and_return("yay!")
      @puller.update('ssh://git@github.com:wadtech/gitgrabber.git', 'gitgrabber')
    end
  end
end
