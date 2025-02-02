# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # The availability of a specific staff
  class Availability1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Id of the availability
    # @return [Integer]
    attr_accessor :id

    # Id of the availability
    # @return [Staff1]
    attr_accessor :staff

    # Id of the availability
    # @return [SessionType1]
    attr_accessor :session_type

    # Availabilities program list.
    # @return [Array[Program1]]
    attr_accessor :programs

    # Availabilities start date and time.
    # @return [DateTime]
    attr_accessor :start_date_time

    # Availabilities end date and time.
    # @return [DateTime]
    attr_accessor :end_date_time

    # Availabilities bookable end date and time.
    # @return [DateTime]
    attr_accessor :bookable_end_date_time

    # Availabilities bookable end date and time.
    # @return [Location1]
    attr_accessor :location

    # Appointment prep time
    # @return [Integer]
    attr_accessor :prep_time

    # Appointment finish time
    # @return [Integer]
    attr_accessor :finish_time

    # Appointment finish time
    # @return [TrueClass | FalseClass]
    attr_accessor :is_masked

    # Appointment finish time
    # @return [TrueClass | FalseClass]
    attr_accessor :show_public

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['staff'] = 'Staff'
      @_hash['session_type'] = 'SessionType'
      @_hash['programs'] = 'Programs'
      @_hash['start_date_time'] = 'StartDateTime'
      @_hash['end_date_time'] = 'EndDateTime'
      @_hash['bookable_end_date_time'] = 'BookableEndDateTime'
      @_hash['location'] = 'Location'
      @_hash['prep_time'] = 'PrepTime'
      @_hash['finish_time'] = 'FinishTime'
      @_hash['is_masked'] = 'IsMasked'
      @_hash['show_public'] = 'ShowPublic'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        staff
        session_type
        programs
        start_date_time
        end_date_time
        bookable_end_date_time
        location
        prep_time
        finish_time
        is_masked
        show_public
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, staff = SKIP, session_type = SKIP,
                   programs = SKIP, start_date_time = SKIP,
                   end_date_time = SKIP, bookable_end_date_time = SKIP,
                   location = SKIP, prep_time = SKIP, finish_time = SKIP,
                   is_masked = SKIP, show_public = SKIP)
      @id = id unless id == SKIP
      @staff = staff unless staff == SKIP
      @session_type = session_type unless session_type == SKIP
      @programs = programs unless programs == SKIP
      @start_date_time = start_date_time unless start_date_time == SKIP
      @end_date_time = end_date_time unless end_date_time == SKIP
      @bookable_end_date_time = bookable_end_date_time unless bookable_end_date_time == SKIP
      @location = location unless location == SKIP
      @prep_time = prep_time unless prep_time == SKIP
      @finish_time = finish_time unless finish_time == SKIP
      @is_masked = is_masked unless is_masked == SKIP
      @show_public = show_public unless show_public == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      staff = Staff1.from_hash(hash['Staff']) if hash['Staff']
      session_type = SessionType1.from_hash(hash['SessionType']) if hash['SessionType']
      # Parameter is an array, so we need to iterate through it
      programs = nil
      unless hash['Programs'].nil?
        programs = []
        hash['Programs'].each do |structure|
          programs << (Program1.from_hash(structure) if structure)
        end
      end

      programs = SKIP unless hash.key?('Programs')
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
      bookable_end_date_time = if hash.key?('BookableEndDateTime')
                                 (DateTimeHelper.from_rfc3339(hash['BookableEndDateTime']) if hash['BookableEndDateTime'])
                               else
                                 SKIP
                               end
      location = Location1.from_hash(hash['Location']) if hash['Location']
      prep_time = hash.key?('PrepTime') ? hash['PrepTime'] : SKIP
      finish_time = hash.key?('FinishTime') ? hash['FinishTime'] : SKIP
      is_masked = hash.key?('IsMasked') ? hash['IsMasked'] : SKIP
      show_public = hash.key?('ShowPublic') ? hash['ShowPublic'] : SKIP

      # Create object from extracted values.
      Availability1.new(id,
                        staff,
                        session_type,
                        programs,
                        start_date_time,
                        end_date_time,
                        bookable_end_date_time,
                        location,
                        prep_time,
                        finish_time,
                        is_masked,
                        show_public)
    end

    def to_custom_start_date_time
      DateTimeHelper.to_rfc3339(start_date_time)
    end

    def to_custom_end_date_time
      DateTimeHelper.to_rfc3339(end_date_time)
    end

    def to_custom_bookable_end_date_time
      DateTimeHelper.to_rfc3339(bookable_end_date_time)
    end
  end
end
