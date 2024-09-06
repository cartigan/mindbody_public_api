# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetUnavailabilitiesResponse Model.
  class GetUnavailabilitiesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains information about unavailabilities
    # @return [Array[UnavailabilityPlain]]
    attr_accessor :unavailabilities

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['unavailabilities'] = 'Unavailabilities'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        unavailabilities
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, unavailabilities = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @unavailabilities = unavailabilities unless unavailabilities == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      unavailabilities = nil
      unless hash['Unavailabilities'].nil?
        unavailabilities = []
        hash['Unavailabilities'].each do |structure|
          unavailabilities << (UnavailabilityPlain.from_hash(structure) if structure)
        end
      end

      unavailabilities = SKIP unless hash.key?('Unavailabilities')

      # Create object from extracted values.
      GetUnavailabilitiesResponse.new(pagination_response,
                                      unavailabilities)
    end
  end
end
