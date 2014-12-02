module MapMyReads
  class Client
    attr_reader :id

    def initialize(id = ' ')
      @id = id
    end

    def url
      'http://192.241.155.126/api/v1/books'
    end

    def build_url
      if id.empty?
        "#{url}.json"
      else
        "#{url}/#{id}.json"
      end
    end

    def make_request
      (Faraday.get(build_url))
    end
  end
end
