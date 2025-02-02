# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # A Client DTO with Suspension Informatoin
  class ClientSuspensionInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # When 'true', indicates that the client is suspended from booking
    # @return [TrueClass | FalseClass]
    attr_accessor :booking_suspended

    # Indicates the Date that BookingSuspension starts 'YYYY-MM-DD'
    # @return [String]
    attr_accessor :suspension_start_date

    # Indicates the Date that BookingSuspension ends 'YYYY-MM-DD'
    # @return [String]
    attr_accessor :suspension_end_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['booking_suspended'] = 'BookingSuspended'
      @_hash['suspension_start_date'] = 'SuspensionStartDate'
      @_hash['suspension_end_date'] = 'SuspensionEndDate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        booking_suspended
        suspension_start_date
        suspension_end_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(booking_suspended = SKIP, suspension_start_date = SKIP,
                   suspension_end_date = SKIP)
      @booking_suspended = booking_suspended unless booking_suspended == SKIP
      @suspension_start_date = suspension_start_date unless suspension_start_date == SKIP
      @suspension_end_date = suspension_end_date unless suspension_end_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      booking_suspended =
        hash.key?('BookingSuspended') ? hash['BookingSuspended'] : SKIP
      suspension_start_date =
        hash.key?('SuspensionStartDate') ? hash['SuspensionStartDate'] : SKIP
      suspension_end_date =
        hash.key?('SuspensionEndDate') ? hash['SuspensionEndDate'] : SKIP

      # Create object from extracted values.
      ClientSuspensionInfo.new(booking_suspended,
                               suspension_start_date,
                               suspension_end_date)
    end
  end
end
