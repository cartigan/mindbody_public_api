# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Contains information about the pagination used.
  class Pagination < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Page number of results in dataset.
    # @return [Integer]
    attr_accessor :page_number

    # Number of results returned in this response.
    # @return [Integer]
    attr_accessor :page_size

    # Total number of results in dataset.
    # @return [Integer]
    attr_accessor :total_result_count

    # Total number of page in dataset.
    # @return [Integer]
    attr_accessor :total_page_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page_number'] = 'PageNumber'
      @_hash['page_size'] = 'PageSize'
      @_hash['total_result_count'] = 'TotalResultCount'
      @_hash['total_page_count'] = 'TotalPageCount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        page_number
        page_size
        total_result_count
        total_page_count
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(page_number = SKIP, page_size = SKIP,
                   total_result_count = SKIP, total_page_count = SKIP)
      @page_number = page_number unless page_number == SKIP
      @page_size = page_size unless page_size == SKIP
      @total_result_count = total_result_count unless total_result_count == SKIP
      @total_page_count = total_page_count unless total_page_count == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page_number = hash.key?('PageNumber') ? hash['PageNumber'] : SKIP
      page_size = hash.key?('PageSize') ? hash['PageSize'] : SKIP
      total_result_count =
        hash.key?('TotalResultCount') ? hash['TotalResultCount'] : SKIP
      total_page_count =
        hash.key?('TotalPageCount') ? hash['TotalPageCount'] : SKIP

      # Create object from extracted values.
      Pagination.new(page_number,
                     page_size,
                     total_result_count,
                     total_page_count)
    end
  end
end
