# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # DaysOfWeek.
  class DaysOfWeekEnum
    DAYS_OF_WEEK_ENUM = [
      # TODO: Write general description for SUNDAY
      SUNDAY = 'Sunday'.freeze,

      # TODO: Write general description for MONDAY
      MONDAY = 'Monday'.freeze,

      # TODO: Write general description for TUESDAY
      TUESDAY = 'Tuesday'.freeze,

      # TODO: Write general description for WEDNESDAY
      WEDNESDAY = 'Wednesday'.freeze,

      # TODO: Write general description for THURSDAY
      THURSDAY = 'Thursday'.freeze,

      # TODO: Write general description for FRIDAY
      FRIDAY = 'Friday'.freeze,

      # TODO: Write general description for SATURDAY
      SATURDAY = 'Saturday'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DAYS_OF_WEEK_ENUM.include?(value)
    end
  end
end
