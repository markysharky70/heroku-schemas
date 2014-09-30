module HerokuSchemas
  class SchemaCommand
    def initialize(options)
      @heroku = PlatformAPI.connect_oauth(ENV['HEROKU_API_KEY'])
      @context_app = options[:context_app]
    end

    def write(string)
      puts string
    end
  end
end
