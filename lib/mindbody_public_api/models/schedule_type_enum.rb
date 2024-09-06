# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # The service category’s schedule type. Possible values are: * All * Class *
  # Enrollment * Appointment * Resource * Arrival
  class ScheduleTypeEnum
    SCHEDULE_TYPE_ENUM = [
      # TODO: Write general description for ALL
      ALL = 'All'.freeze,

      # TODO: Write general description for CLASS
      CLASS = 'Class'.freeze,

      # TODO: Write general description for ENROLLMENT
      ENROLLMENT = 'Enrollment'.freeze,

      # TODO: Write general description for APPOINTMENT
      APPOINTMENT = 'Appointment'.freeze,

      # TODO: Write general description for RESOURCE
      RESOURCE = 'Resource'.freeze,

      # TODO: Write general description for MEDIA
      MEDIA = 'Media'.freeze,

      # TODO: Write general description for ARRIVAL
      ARRIVAL = 'Arrival'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SCHEDULE_TYPE_ENUM.include?(value)
    end
  end
end
