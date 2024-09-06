# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetScheduledServiceEarningsResponse Model.
  class GetScheduledServiceEarningsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains the class payroll events.
    # @return [Array[ScheduledServiceEarningsEvent]]
    attr_accessor :scheduled_service_earnings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['scheduled_service_earnings'] = 'ScheduledServiceEarnings'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        scheduled_service_earnings
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP,
                   scheduled_service_earnings = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      unless scheduled_service_earnings == SKIP
        @scheduled_service_earnings =
          scheduled_service_earnings
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      scheduled_service_earnings = nil
      unless hash['ScheduledServiceEarnings'].nil?
        scheduled_service_earnings = []
        hash['ScheduledServiceEarnings'].each do |structure|
          scheduled_service_earnings << (ScheduledServiceEarningsEvent.from_hash(structure) if structure)
        end
      end

      scheduled_service_earnings = SKIP unless hash.key?('ScheduledServiceEarnings')

      # Create object from extracted values.
      GetScheduledServiceEarningsResponse.new(pagination_response,
                                              scheduled_service_earnings)
    end
  end
end
