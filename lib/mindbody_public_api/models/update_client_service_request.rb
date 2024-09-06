# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # UpdateClientServiceRequest Model.
  class UpdateClientServiceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the service to update.
    # @return [Integer]
    attr_accessor :service_id

    # The date that the service became active.
    # @return [DateTime]
    attr_accessor :active_date

    # The date that the service is to expire.
    # @return [DateTime]
    attr_accessor :expiration_date

    # The number of client service sessions to update.
    # @return [Integer]
    attr_accessor :count

    # When `true`, indicates that input information is to be validated, but not
    # committed.<br />
    # When `false` or omitted, the database is affected.<br />
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :test

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['service_id'] = 'ServiceId'
      @_hash['active_date'] = 'ActiveDate'
      @_hash['expiration_date'] = 'ExpirationDate'
      @_hash['count'] = 'Count'
      @_hash['test'] = 'Test'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        active_date
        expiration_date
        count
        test
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(service_id = nil, active_date = SKIP, expiration_date = SKIP,
                   count = SKIP, test = SKIP)
      @service_id = service_id
      @active_date = active_date unless active_date == SKIP
      @expiration_date = expiration_date unless expiration_date == SKIP
      @count = count unless count == SKIP
      @test = test unless test == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      service_id = hash.key?('ServiceId') ? hash['ServiceId'] : nil
      active_date = if hash.key?('ActiveDate')
                      (DateTimeHelper.from_rfc3339(hash['ActiveDate']) if hash['ActiveDate'])
                    else
                      SKIP
                    end
      expiration_date = if hash.key?('ExpirationDate')
                          (DateTimeHelper.from_rfc3339(hash['ExpirationDate']) if hash['ExpirationDate'])
                        else
                          SKIP
                        end
      count = hash.key?('Count') ? hash['Count'] : SKIP
      test = hash.key?('Test') ? hash['Test'] : SKIP

      # Create object from extracted values.
      UpdateClientServiceRequest.new(service_id,
                                     active_date,
                                     expiration_date,
                                     count,
                                     test)
    end

    def to_custom_active_date
      DateTimeHelper.to_rfc3339(active_date)
    end

    def to_custom_expiration_date
      DateTimeHelper.to_rfc3339(expiration_date)
    end
  end
end
