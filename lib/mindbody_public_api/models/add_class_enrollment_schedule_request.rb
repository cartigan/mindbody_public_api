# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # AddClassEnrollmentScheduleRequest Model.
  class AddClassEnrollmentScheduleRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Id of the class/enrollment description. This can be found in
    # GetClassDescriptions.
    # @return [Integer]
    attr_accessor :class_description_id

    # The Location Id of the enrollment schedule.
    # @return [Integer]
    attr_accessor :location_id

    # The start date of the enrollment schedule.
    # @return [DateTime]
    attr_accessor :start_date

    # The end date of the enrollment schedule.
    # @return [DateTime]
    attr_accessor :end_date

    # Enrollment start time (use null or omit for TBD).
    # @return [DateTime]
    attr_accessor :start_time

    # Enrollment end time (ignored if StartTime is null or omitted).
    # @return [DateTime]
    attr_accessor :end_time

    # If the enrollment occurs on Sunday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_sunday

    # If the enrollment occurs on Monday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_monday

    # If the enrollment occurs on Tuesday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_tuesday

    # If the enrollment occurs on Wednesday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_wednesday

    # If the enrollment occurs on Thursday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_thursday

    # If the enrollment occurs on Friday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_friday

    # If the enrollment occurs on Saturday(s).
    # @return [TrueClass | FalseClass]
    attr_accessor :day_saturday

    # The staff member teaching the enrollment.
    # @return [Integer]
    attr_accessor :staff_id

    # The staff pay rate. Must be between 1-21.
    # @return [Integer]
    attr_accessor :staff_pay_rate

    # The room where the enrollment is taking place.
    # @return [Integer]
    attr_accessor :resource_id

    # How many people can attend.
    # @return [Integer]
    attr_accessor :max_capacity

    # How many people can signup online.
    # Default: **0**
    # @return [Integer]
    attr_accessor :web_capacity

    # How many people can waitlist.
    # Default:**0**
    # @return [Integer]
    attr_accessor :waitlist_capacity

    # One of: PaymentRequired, BookAndPayLater, Free
    # @return [String]
    attr_accessor :booking_status

    # Allow clients to choose which sessions they’d like to sign up for.
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_open_enrollment

    # Allow booking after the enrollment has started.
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_date_forward_enrollment

    # Pricing Options for this schedule
    # @return [Array[Integer]]
    attr_accessor :pricing_options_product_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['class_description_id'] = 'ClassDescriptionId'
      @_hash['location_id'] = 'LocationId'
      @_hash['start_date'] = 'StartDate'
      @_hash['end_date'] = 'EndDate'
      @_hash['start_time'] = 'StartTime'
      @_hash['end_time'] = 'EndTime'
      @_hash['day_sunday'] = 'DaySunday'
      @_hash['day_monday'] = 'DayMonday'
      @_hash['day_tuesday'] = 'DayTuesday'
      @_hash['day_wednesday'] = 'DayWednesday'
      @_hash['day_thursday'] = 'DayThursday'
      @_hash['day_friday'] = 'DayFriday'
      @_hash['day_saturday'] = 'DaySaturday'
      @_hash['staff_id'] = 'StaffId'
      @_hash['staff_pay_rate'] = 'StaffPayRate'
      @_hash['resource_id'] = 'ResourceId'
      @_hash['max_capacity'] = 'MaxCapacity'
      @_hash['web_capacity'] = 'WebCapacity'
      @_hash['waitlist_capacity'] = 'WaitlistCapacity'
      @_hash['booking_status'] = 'BookingStatus'
      @_hash['allow_open_enrollment'] = 'AllowOpenEnrollment'
      @_hash['allow_date_forward_enrollment'] = 'AllowDateForwardEnrollment'
      @_hash['pricing_options_product_ids'] = 'PricingOptionsProductIds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        class_description_id
        location_id
        start_date
        end_date
        start_time
        end_time
        day_sunday
        day_monday
        day_tuesday
        day_wednesday
        day_thursday
        day_friday
        day_saturday
        staff_id
        staff_pay_rate
        resource_id
        max_capacity
        web_capacity
        waitlist_capacity
        booking_status
        allow_open_enrollment
        allow_date_forward_enrollment
        pricing_options_product_ids
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(class_description_id = SKIP, location_id = SKIP,
                   start_date = SKIP, end_date = SKIP, start_time = SKIP,
                   end_time = SKIP, day_sunday = SKIP, day_monday = SKIP,
                   day_tuesday = SKIP, day_wednesday = SKIP,
                   day_thursday = SKIP, day_friday = SKIP, day_saturday = SKIP,
                   staff_id = SKIP, staff_pay_rate = SKIP, resource_id = SKIP,
                   max_capacity = SKIP, web_capacity = SKIP,
                   waitlist_capacity = SKIP, booking_status = SKIP,
                   allow_open_enrollment = SKIP,
                   allow_date_forward_enrollment = SKIP,
                   pricing_options_product_ids = SKIP)
      @class_description_id = class_description_id unless class_description_id == SKIP
      @location_id = location_id unless location_id == SKIP
      @start_date = start_date unless start_date == SKIP
      @end_date = end_date unless end_date == SKIP
      @start_time = start_time unless start_time == SKIP
      @end_time = end_time unless end_time == SKIP
      @day_sunday = day_sunday unless day_sunday == SKIP
      @day_monday = day_monday unless day_monday == SKIP
      @day_tuesday = day_tuesday unless day_tuesday == SKIP
      @day_wednesday = day_wednesday unless day_wednesday == SKIP
      @day_thursday = day_thursday unless day_thursday == SKIP
      @day_friday = day_friday unless day_friday == SKIP
      @day_saturday = day_saturday unless day_saturday == SKIP
      @staff_id = staff_id unless staff_id == SKIP
      @staff_pay_rate = staff_pay_rate unless staff_pay_rate == SKIP
      @resource_id = resource_id unless resource_id == SKIP
      @max_capacity = max_capacity unless max_capacity == SKIP
      @web_capacity = web_capacity unless web_capacity == SKIP
      @waitlist_capacity = waitlist_capacity unless waitlist_capacity == SKIP
      @booking_status = booking_status unless booking_status == SKIP
      @allow_open_enrollment = allow_open_enrollment unless allow_open_enrollment == SKIP
      unless allow_date_forward_enrollment == SKIP
        @allow_date_forward_enrollment =
          allow_date_forward_enrollment
      end
      unless pricing_options_product_ids == SKIP
        @pricing_options_product_ids =
          pricing_options_product_ids
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      class_description_id =
        hash.key?('ClassDescriptionId') ? hash['ClassDescriptionId'] : SKIP
      location_id = hash.key?('LocationId') ? hash['LocationId'] : SKIP
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
      start_time = if hash.key?('StartTime')
                     (DateTimeHelper.from_rfc3339(hash['StartTime']) if hash['StartTime'])
                   else
                     SKIP
                   end
      end_time = if hash.key?('EndTime')
                   (DateTimeHelper.from_rfc3339(hash['EndTime']) if hash['EndTime'])
                 else
                   SKIP
                 end
      day_sunday = hash.key?('DaySunday') ? hash['DaySunday'] : SKIP
      day_monday = hash.key?('DayMonday') ? hash['DayMonday'] : SKIP
      day_tuesday = hash.key?('DayTuesday') ? hash['DayTuesday'] : SKIP
      day_wednesday = hash.key?('DayWednesday') ? hash['DayWednesday'] : SKIP
      day_thursday = hash.key?('DayThursday') ? hash['DayThursday'] : SKIP
      day_friday = hash.key?('DayFriday') ? hash['DayFriday'] : SKIP
      day_saturday = hash.key?('DaySaturday') ? hash['DaySaturday'] : SKIP
      staff_id = hash.key?('StaffId') ? hash['StaffId'] : SKIP
      staff_pay_rate = hash.key?('StaffPayRate') ? hash['StaffPayRate'] : SKIP
      resource_id = hash.key?('ResourceId') ? hash['ResourceId'] : SKIP
      max_capacity = hash.key?('MaxCapacity') ? hash['MaxCapacity'] : SKIP
      web_capacity = hash.key?('WebCapacity') ? hash['WebCapacity'] : SKIP
      waitlist_capacity =
        hash.key?('WaitlistCapacity') ? hash['WaitlistCapacity'] : SKIP
      booking_status = hash.key?('BookingStatus') ? hash['BookingStatus'] : SKIP
      allow_open_enrollment =
        hash.key?('AllowOpenEnrollment') ? hash['AllowOpenEnrollment'] : SKIP
      allow_date_forward_enrollment =
        hash.key?('AllowDateForwardEnrollment') ? hash['AllowDateForwardEnrollment'] : SKIP
      pricing_options_product_ids =
        hash.key?('PricingOptionsProductIds') ? hash['PricingOptionsProductIds'] : SKIP

      # Create object from extracted values.
      AddClassEnrollmentScheduleRequest.new(class_description_id,
                                            location_id,
                                            start_date,
                                            end_date,
                                            start_time,
                                            end_time,
                                            day_sunday,
                                            day_monday,
                                            day_tuesday,
                                            day_wednesday,
                                            day_thursday,
                                            day_friday,
                                            day_saturday,
                                            staff_id,
                                            staff_pay_rate,
                                            resource_id,
                                            max_capacity,
                                            web_capacity,
                                            waitlist_capacity,
                                            booking_status,
                                            allow_open_enrollment,
                                            allow_date_forward_enrollment,
                                            pricing_options_product_ids)
    end

    def to_custom_start_date
      DateTimeHelper.to_rfc3339(start_date)
    end

    def to_custom_end_date
      DateTimeHelper.to_rfc3339(end_date)
    end

    def to_custom_start_time
      DateTimeHelper.to_rfc3339(start_time)
    end

    def to_custom_end_time
      DateTimeHelper.to_rfc3339(end_time)
    end
  end
end
