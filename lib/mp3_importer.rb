
class MusicImporter
    attr_accessor :path
    def initialize(path)
        @path = path
    end
    def files
      @files = Dir["#{@path}/*.mp3"]
      binding.pry
      @files = @files.join("")
      @files = @files.split("#{path}/")
      @files.shift
      @files
        end

    def self.import
      files
        @files.each do |x|

          self.new_by_filename(x)
      end

    end

end
