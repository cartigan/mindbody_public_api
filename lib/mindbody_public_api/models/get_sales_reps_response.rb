# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # This is the response class for the get sales reps API
  class GetSalesRepsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # This the list of sales reps and their details
    # @return [Array[SalesRepResponse]]
    attr_accessor :sales_reps

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['sales_reps'] = 'SalesReps'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        sales_reps
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, sales_reps = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @sales_reps = sales_reps unless sales_reps == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      sales_reps = nil
      unless hash['SalesReps'].nil?
        sales_reps = []
        hash['SalesReps'].each do |structure|
          sales_reps << (SalesRepResponse.from_hash(structure) if structure)
        end
      end

      sales_reps = SKIP unless hash.key?('SalesReps')

      # Create object from extracted values.
      GetSalesRepsResponse.new(pagination_response,
                               sales_reps)
    end
  end
end
