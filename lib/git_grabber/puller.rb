module GitGrabber
  class Puller
    def initialize(backup_dir)
      @base_dir = backup_dir
    end

    def update(addr, path)
      if File.directory? File.join(@base_dir, path)
        fetch_repository(addr, path)
      else
        clone_repository(addr, path)
      end
    end

  protected
    def fetch_repository(addr, path)
      puts "fetch #{addr} to #{File.join @base_dir, path}"
      Dir.chdir(File.join @base_dir, path) do
        `git fetch --all`
      end
    end

    def clone_repository(addr, path)
      puts "clone #{addr} to #{File.join @base_dir, path}"
      `git clone --bare #{addr} #{File.join @base_dir, path}`
    end
  end
end
