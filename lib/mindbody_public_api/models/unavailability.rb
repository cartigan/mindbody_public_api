# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # Unavailability Model.
  class Unavailability < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the unavailability.
    # @return [Integer]
    attr_accessor :id

    # The date and time the unavailability starts.
    # @return [DateTime]
    attr_accessor :start_date_time

    # The date and time the unavailability ends.
    # @return [DateTime]
    attr_accessor :end_date_time

    # A description of the unavailability.
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['start_date_time'] = 'StartDateTime'
      @_hash['end_date_time'] = 'EndDateTime'
      @_hash['description'] = 'Description'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        start_date_time
        end_date_time
        description
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, start_date_time = SKIP, end_date_time = SKIP,
                   description = SKIP)
      @id = id unless id == SKIP
      @start_date_time = start_date_time unless start_date_time == SKIP
      @end_date_time = end_date_time unless end_date_time == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      start_date_time = if hash.key?('StartDateTime')
                          (DateTimeHelper.from_rfc3339(hash['StartDateTime']) if hash['StartDateTime'])
                        else
                          SKIP
                        end
      end_date_time = if hash.key?('EndDateTime')
                        (DateTimeHelper.from_rfc3339(hash['EndDateTime']) if hash['EndDateTime'])
                      else
                        SKIP
                      end
      description = hash.key?('Description') ? hash['Description'] : SKIP

      # Create object from extracted values.
      Unavailability.new(id,
                         start_date_time,
                         end_date_time,
                         description)
    end

    def to_custom_start_date_time
      DateTimeHelper.to_rfc3339(start_date_time)
    end

    def to_custom_end_date_time
      DateTimeHelper.to_rfc3339(end_date_time)
    end
  end
end
