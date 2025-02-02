# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # The status of this appointment. Possible values are: * None * Requested *
  # Booked * Completed * Confirmed * Arrived * NoShow * Cancelled *
  # LateCancelled
  class StatusEnum
    STATUS_ENUM = [
      # TODO: Write general description for NONE
      NONE = 'None'.freeze,

      # TODO: Write general description for REQUESTED
      REQUESTED = 'Requested'.freeze,

      # TODO: Write general description for BOOKED
      BOOKED = 'Booked'.freeze,

      # TODO: Write general description for COMPLETED
      COMPLETED = 'Completed'.freeze,

      # TODO: Write general description for CONFIRMED
      CONFIRMED = 'Confirmed'.freeze,

      # TODO: Write general description for ARRIVED
      ARRIVED = 'Arrived'.freeze,

      # TODO: Write general description for NOSHOW
      NOSHOW = 'NoShow'.freeze,

      # TODO: Write general description for CANCELLED
      CANCELLED = 'Cancelled'.freeze,

      # TODO: Write general description for LATECANCELLED
      LATECANCELLED = 'LateCancelled'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      STATUS_ENUM.include?(value)
    end
  end
end
