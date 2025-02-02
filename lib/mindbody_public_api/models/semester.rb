# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # Semesters help you quickly classify enrollments.
  class Semester < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # This semester’s unique ID.
    # @return [Integer]
    attr_accessor :id

    # Name of the semester.
    # @return [String]
    attr_accessor :name

    # The description of the semester.
    # @return [String]
    attr_accessor :description

    # Start date of the semester.
    # @return [DateTime]
    attr_accessor :start_date

    # End date of the semester.
    # @return [DateTime]
    attr_accessor :end_date

    # Discount for multiple registration in the semester.
    # @return [Float]
    attr_accessor :multi_registration_discount

    # Registration deadline of the semester.
    # @return [DateTime]
    attr_accessor :multi_registration_deadline

    # When `true`, indicates that the semester is active.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['name'] = 'Name'
      @_hash['description'] = 'Description'
      @_hash['start_date'] = 'StartDate'
      @_hash['end_date'] = 'EndDate'
      @_hash['multi_registration_discount'] = 'MultiRegistrationDiscount'
      @_hash['multi_registration_deadline'] = 'MultiRegistrationDeadline'
      @_hash['active'] = 'Active'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        description
        start_date
        end_date
        multi_registration_discount
        multi_registration_deadline
        active
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, name = SKIP, description = SKIP,
                   start_date = SKIP, end_date = SKIP,
                   multi_registration_discount = SKIP,
                   multi_registration_deadline = SKIP, active = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @description = description unless description == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      unless multi_registration_discount == SKIP
        @multi_registration_discount =
          multi_registration_discount
      end
      unless multi_registration_deadline == SKIP
        @multi_registration_deadline =
          multi_registration_deadline
      end
      @active = active unless active == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP
      start_date = if hash.key?('StartDate')
                     (DateTimeHelper.from_rfc3339(hash['StartDate']) if hash['StartDate'])
                   else
                     SKIP
                   end
      end_date = if hash.key?('EndDate')
                   (DateTimeHelper.from_rfc3339(hash['EndDate']) if hash['EndDate'])
                 else
                   SKIP
                 end
      multi_registration_discount =
        hash.key?('MultiRegistrationDiscount') ? hash['MultiRegistrationDiscount'] : SKIP
      multi_registration_deadline = if hash.key?('MultiRegistrationDeadline')
                                      (DateTimeHelper.from_rfc3339(hash['MultiRegistrationDeadline']) if hash['MultiRegistrationDeadline'])
                                    else
                                      SKIP
                                    end
      active = hash.key?('Active') ? hash['Active'] : SKIP

      # Create object from extracted values.
      Semester.new(id,
                   name,
                   description,
                   start_date,
                   end_date,
                   multi_registration_discount,
                   multi_registration_deadline,
                   active)
    end

    def to_custom_start_date
      DateTimeHelper.to_rfc3339(start_date)
    end

    def to_custom_end_date
      DateTimeHelper.to_rfc3339(end_date)
    end

    def to_custom_multi_registration_deadline
      DateTimeHelper.to_rfc3339(multi_registration_deadline)
    end
  end
end
