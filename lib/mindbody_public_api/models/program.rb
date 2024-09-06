# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Program Model.
  class Program < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The service category’s ID.
    # @return [Integer]
    attr_accessor :id

    # The name of this service category.
    # @return [String]
    attr_accessor :name

    # The service category’s schedule type. Possible values are:
    # * All
    # * Class
    # * Enrollment
    # * Appointment
    # * Resource
    # * Arrival
    # @return [ScheduleTypeEnum]
    attr_accessor :schedule_type

    # The offset to use for the service category.
    # @return [Integer]
    attr_accessor :cancel_offset

    # The content delivery platform(s) used by the service category. Possible
    # values are:
    # * InPerson
    # * Livestream:Mindbody
    # * Livestream:Other
    # @return [Array[String]]
    attr_accessor :content_formats

    # Scheduling window offset
    # @return [Integer]
    attr_accessor :schedule_offset

    # Scheduling window offset end
    # @return [Integer]
    attr_accessor :schedule_offset_end

    # Scheduling window offset end
    # @return [PricingRelationships]
    attr_accessor :pricing_relationships

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['name'] = 'Name'
      @_hash['schedule_type'] = 'ScheduleType'
      @_hash['cancel_offset'] = 'CancelOffset'
      @_hash['content_formats'] = 'ContentFormats'
      @_hash['schedule_offset'] = 'ScheduleOffset'
      @_hash['schedule_offset_end'] = 'ScheduleOffsetEnd'
      @_hash['pricing_relationships'] = 'PricingRelationships'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        schedule_type
        cancel_offset
        content_formats
        schedule_offset
        schedule_offset_end
        pricing_relationships
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, name = SKIP, schedule_type = SKIP,
                   cancel_offset = SKIP, content_formats = SKIP,
                   schedule_offset = SKIP, schedule_offset_end = SKIP,
                   pricing_relationships = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @schedule_type = schedule_type unless schedule_type == SKIP
      @cancel_offset = cancel_offset unless cancel_offset == SKIP
      @content_formats = content_formats unless content_formats == SKIP
      @schedule_offset = schedule_offset unless schedule_offset == SKIP
      @schedule_offset_end = schedule_offset_end unless schedule_offset_end == SKIP
      @pricing_relationships = pricing_relationships unless pricing_relationships == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP
      schedule_type = hash.key?('ScheduleType') ? hash['ScheduleType'] : SKIP
      cancel_offset = hash.key?('CancelOffset') ? hash['CancelOffset'] : SKIP
      content_formats =
        hash.key?('ContentFormats') ? hash['ContentFormats'] : SKIP
      schedule_offset =
        hash.key?('ScheduleOffset') ? hash['ScheduleOffset'] : SKIP
      schedule_offset_end =
        hash.key?('ScheduleOffsetEnd') ? hash['ScheduleOffsetEnd'] : SKIP
      pricing_relationships = PricingRelationships.from_hash(hash['PricingRelationships']) if
        hash['PricingRelationships']

      # Create object from extracted values.
      Program.new(id,
                  name,
                  schedule_type,
                  cancel_offset,
                  content_formats,
                  schedule_offset,
                  schedule_offset_end,
                  pricing_relationships)
    end
  end
end
