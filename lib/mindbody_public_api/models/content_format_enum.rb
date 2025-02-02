# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # ContentFormat.
  class ContentFormatEnum
    CONTENT_FORMAT_ENUM = [
      # TODO: Write general description for INPERSON
      INPERSON = 'InPerson'.freeze,

      # TODO: Write general description for MINDBODY
      MINDBODY = 'Mindbody'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'Other'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CONTENT_FORMAT_ENUM.include?(value)
    end
  end
end
