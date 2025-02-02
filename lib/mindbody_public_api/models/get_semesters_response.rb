# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Get Semesters Response Model
  class GetSemestersResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains the Semester objects, each of which describes the semesters for a
    # site.
    # @return [Array[Semester]]
    attr_accessor :semesters

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['semesters'] = 'Semesters'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        semesters
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, semesters = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @semesters = semesters unless semesters == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      semesters = nil
      unless hash['Semesters'].nil?
        semesters = []
        hash['Semesters'].each do |structure|
          semesters << (Semester.from_hash(structure) if structure)
        end
      end

      semesters = SKIP unless hash.key?('Semesters')

      # Create object from extracted values.
      GetSemestersResponse.new(pagination_response,
                               semesters)
    end
  end
end
