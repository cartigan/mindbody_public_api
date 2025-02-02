# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetClassesResponse Model.
  class GetClassesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # A list of the requested classes.
    # @return [Array[Class]]
    attr_accessor :classes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['classes'] = 'Classes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        classes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, classes = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @classes = classes unless classes == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      classes = nil
      unless hash['Classes'].nil?
        classes = []
        hash['Classes'].each do |structure|
          classes << (Class.from_hash(structure) if structure)
        end
      end

      classes = SKIP unless hash.key?('Classes')

      # Create object from extracted values.
      GetClassesResponse.new(pagination_response,
                             classes)
    end
  end
end
