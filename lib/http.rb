module HttpData
  class << self
  URL = "https://www.loc.gov/?fo=json"



    def parse_all
        data = JSON.parse(self.get_data)
        binding.pry
        data.collect do |d|
          Data.new(d)
      end
    end

    def get_data
      uri = URI.parse(URL)
      response = Net::HTTP.get_response(uri)
      response.body
      # binding.pry
    end




    #
    # uri = URI(URL)
    # http = Net::HTTP.new(uri.host, uri.port)
    # http.use_ssl = true
    #
    # request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})
    #
    # request.body = {} # SOME JSON DATA e.g {msg: 'Why'}.to_json
    #
    # response = http.request(request)
    #
    # body = JSON.parse(response.body) # e.g {answer: 'because it was there'}
  end
end
