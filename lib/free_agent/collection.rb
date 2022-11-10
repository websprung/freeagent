module FreeAgent
  class Collection
    attr_reader :data, :total, :next_cursor, :prev_cursor

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
      )
    end

    def initialize(data:)
      @data = data
    end
  end
end
