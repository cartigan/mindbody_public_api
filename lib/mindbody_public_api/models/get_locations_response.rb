# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetLocationsResponse Model.
  class GetLocationsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains information about the locations.
    # @return [Array[Location]]
    attr_accessor :locations

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['locations'] = 'Locations'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        locations
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, locations = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @locations = locations unless locations == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      locations = nil
      unless hash['Locations'].nil?
        locations = []
        hash['Locations'].each do |structure|
          locations << (Location.from_hash(structure) if structure)
        end
      end

      locations = SKIP unless hash.key?('Locations')

      # Create object from extracted values.
      GetLocationsResponse.new(pagination_response,
                               locations)
    end
  end
end
