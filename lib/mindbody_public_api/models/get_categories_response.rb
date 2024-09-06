# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Get Categories Response Model
  class GetCategoriesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains the Category objects, each of which describes the categories for
    # a site.
    # @return [Array[Category]]
    attr_accessor :categories

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['categories'] = 'Categories'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        categories
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, categories = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @categories = categories unless categories == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      categories = nil
      unless hash['Categories'].nil?
        categories = []
        hash['Categories'].each do |structure|
          categories << (Category.from_hash(structure) if structure)
        end
      end

      categories = SKIP unless hash.key?('Categories')

      # Create object from extracted values.
      GetCategoriesResponse.new(pagination_response,
                                categories)
    end
  end
end
