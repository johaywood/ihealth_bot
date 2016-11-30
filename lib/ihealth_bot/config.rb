module IhealthBot
  class Config
    def self.email
      config_file.dig(:credentials, :email)
    end

    def self.password
      config_file.dig(:credentials, :password)
    end

    def self.valid?
      return false unless File.exist?("#{Dir.home}/.ihealth_bot")
      File.open("#{Dir.home}/.ihealth_bot", 'r') do |f|
        return false unless data = JSON.parse(f.read, symbolize_names: true) rescue nil
        return false unless data[:credentials]
        return false unless data[:credentials][:email]
        return false unless data[:credentials][:password]
      end
      true
    end

    private

    def self.config_file
      @config ||= JSON.parse(File.read("#{Dir.home}/.ihealth_bot"), symbolize_names: true)
    end
  end
end
