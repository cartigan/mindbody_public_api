# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetProgramsResponse Model.
  class GetProgramsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains information about the programs.
    # @return [Array[Program]]
    attr_accessor :programs

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['programs'] = 'Programs'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        programs
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, programs = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @programs = programs unless programs == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      programs = nil
      unless hash['Programs'].nil?
        programs = []
        hash['Programs'].each do |structure|
          programs << (Program.from_hash(structure) if structure)
        end
      end

      programs = SKIP unless hash.key?('Programs')

      # Create object from extracted values.
      GetProgramsResponse.new(pagination_response,
                              programs)
    end
  end
end
