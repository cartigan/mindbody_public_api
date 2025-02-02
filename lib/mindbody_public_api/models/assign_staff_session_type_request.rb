# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # AssignStaffSessionTypeRequest Model.
  class AssignStaffSessionTypeRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the staff member session type is getting assigned to. The staff
    # member must be assignable to appointments or already be assigned to the
    # session type in the request.
    # @return [Integer]
    attr_accessor :staff_id

    # The ID of the session type that is getting assigned to the staff member.
    # The session type must be an appointment.
    # @return [Integer]
    attr_accessor :session_type_id

    # Indicates if assignment is active. Passing `false` is equivalent to
    # deleting the assignment.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # The staff specific amount of time that a session of this type typically
    # lasts.
    # @return [Integer]
    attr_accessor :time_length

    # Prep time in minutes
    # @return [Integer]
    attr_accessor :prep_time

    # Finish time in minutes
    # @return [Integer]
    attr_accessor :finish_time

    # The pay rate type. Can be one of the following (case insensitive):
    #    Percent
    #    Flat
    #    No Pay
    #    If PayRateType is not provided in the request and the request is
    # creating a completely new assignment (not editing an existing active or
    # inactive assignment), then the staff member default pay rate and pay rate
    # amount are used to create the assignment. Otherwise, the existing
    # assignment values are used for any optional request parameters not
    # included in the request.
    # @return [String]
    attr_accessor :pay_rate_type

    # The pay rate amount for the specific staff member. It is parsed according
    # to the PayRateType.
    # @return [Float]
    attr_accessor :pay_rate_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['staff_id'] = 'StaffId'
      @_hash['session_type_id'] = 'SessionTypeId'
      @_hash['active'] = 'Active'
      @_hash['time_length'] = 'TimeLength'
      @_hash['prep_time'] = 'PrepTime'
      @_hash['finish_time'] = 'FinishTime'
      @_hash['pay_rate_type'] = 'PayRateType'
      @_hash['pay_rate_amount'] = 'PayRateAmount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        time_length
        prep_time
        finish_time
        pay_rate_type
        pay_rate_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(staff_id = nil, session_type_id = nil, active = nil,
                   time_length = SKIP, prep_time = SKIP, finish_time = SKIP,
                   pay_rate_type = SKIP, pay_rate_amount = SKIP)
      @staff_id = staff_id
      @session_type_id = session_type_id
      @active = active
      @time_length = time_length unless time_length == SKIP
      @prep_time = prep_time unless prep_time == SKIP
      @finish_time = finish_time unless finish_time == SKIP
      @pay_rate_type = pay_rate_type unless pay_rate_type == SKIP
      @pay_rate_amount = pay_rate_amount unless pay_rate_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      staff_id = hash.key?('StaffId') ? hash['StaffId'] : nil
      session_type_id = hash.key?('SessionTypeId') ? hash['SessionTypeId'] : nil
      active = hash.key?('Active') ? hash['Active'] : nil
      time_length = hash.key?('TimeLength') ? hash['TimeLength'] : SKIP
      prep_time = hash.key?('PrepTime') ? hash['PrepTime'] : SKIP
      finish_time = hash.key?('FinishTime') ? hash['FinishTime'] : SKIP
      pay_rate_type = hash.key?('PayRateType') ? hash['PayRateType'] : SKIP
      pay_rate_amount =
        hash.key?('PayRateAmount') ? hash['PayRateAmount'] : SKIP

      # Create object from extracted values.
      AssignStaffSessionTypeRequest.new(staff_id,
                                        session_type_id,
                                        active,
                                        time_length,
                                        prep_time,
                                        finish_time,
                                        pay_rate_type,
                                        pay_rate_amount)
    end
  end
end
