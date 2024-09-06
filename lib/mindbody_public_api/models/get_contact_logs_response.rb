# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetContactLogsResponse Model.
  class GetContactLogsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains the information about the contact logs.
    # @return [Array[ContactLog]]
    attr_accessor :contact_logs

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['contact_logs'] = 'ContactLogs'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        contact_logs
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, contact_logs = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @contact_logs = contact_logs unless contact_logs == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      contact_logs = nil
      unless hash['ContactLogs'].nil?
        contact_logs = []
        hash['ContactLogs'].each do |structure|
          contact_logs << (ContactLog.from_hash(structure) if structure)
        end
      end

      contact_logs = SKIP unless hash.key?('ContactLogs')

      # Create object from extracted values.
      GetContactLogsResponse.new(pagination_response,
                                 contact_logs)
    end
  end
end
