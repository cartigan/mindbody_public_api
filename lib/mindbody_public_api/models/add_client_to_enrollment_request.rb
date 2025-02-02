# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # Add Client To Enrollment Request Model
  class AddClientToEnrollmentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The client IDs of the clients to add to the specified enrollments.
    # @return [String]
    attr_accessor :client_id

    # The class schedule IDs of the enrollments to add the clients to. The
    # ClassScheduleId can be found in GetEnrollments as the EnrollmentId.
    # @return [Integer]
    attr_accessor :class_schedule_id

    # Enroll the clients from this date forward. `EnrollDateForward` takes
    # priority over open enrollment.
    # Default: **null**
    # @return [DateTime]
    attr_accessor :enroll_date_forward

    # Enroll for selected dates.
    # @return [Array[DateTime]]
    attr_accessor :enroll_open

    # When `true`, input information is validated, but not committed.<br />
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :test

    # When `true`, indicates that the client should be sent an email. An email
    # is only sent if the client has an email address and automatic emails have
    # been set up. <br />
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_email

    # When `true`, the client is added to a specific enrollments waiting list.
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :waitlist

    # The waiting list entry to add. Used to add a client to an enrollment from
    # a waiting list entry.
    # @return [Integer]
    attr_accessor :waitlist_entry_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_id'] = 'ClientId'
      @_hash['class_schedule_id'] = 'ClassScheduleId'
      @_hash['enroll_date_forward'] = 'EnrollDateForward'
      @_hash['enroll_open'] = 'EnrollOpen'
      @_hash['test'] = 'Test'
      @_hash['send_email'] = 'SendEmail'
      @_hash['waitlist'] = 'Waitlist'
      @_hash['waitlist_entry_id'] = 'WaitlistEntryId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enroll_date_forward
        enroll_open
        test
        send_email
        waitlist
        waitlist_entry_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_id = nil, class_schedule_id = nil,
                   enroll_date_forward = SKIP, enroll_open = SKIP, test = SKIP,
                   send_email = SKIP, waitlist = SKIP, waitlist_entry_id = SKIP)
      @client_id = client_id
      @class_schedule_id = class_schedule_id
      @enroll_date_forward = enroll_date_forward unless enroll_date_forward == SKIP
      @enroll_open = enroll_open unless enroll_open == SKIP
      @test = test unless test == SKIP
      @send_email = send_email unless send_email == SKIP
      @waitlist = waitlist unless waitlist == SKIP
      @waitlist_entry_id = waitlist_entry_id unless waitlist_entry_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_id = hash.key?('ClientId') ? hash['ClientId'] : nil
      class_schedule_id =
        hash.key?('ClassScheduleId') ? hash['ClassScheduleId'] : nil
      enroll_date_forward = if hash.key?('EnrollDateForward')
                              (DateTimeHelper.from_rfc3339(hash['EnrollDateForward']) if hash['EnrollDateForward'])
                            else
                              SKIP
                            end
      # Parameter is an array, so we need to iterate through it
      enroll_open = nil
      unless hash['EnrollOpen'].nil?
        enroll_open = []
        hash['EnrollOpen'].each do |datetime_string|
          enroll_open << (DateTimeHelper.from_rfc3339(datetime_string) if datetime_string)
        end
      end

      enroll_open = SKIP unless hash.key?('EnrollOpen')
      test = hash.key?('Test') ? hash['Test'] : SKIP
      send_email = hash.key?('SendEmail') ? hash['SendEmail'] : SKIP
      waitlist = hash.key?('Waitlist') ? hash['Waitlist'] : SKIP
      waitlist_entry_id =
        hash.key?('WaitlistEntryId') ? hash['WaitlistEntryId'] : SKIP

      # Create object from extracted values.
      AddClientToEnrollmentRequest.new(client_id,
                                       class_schedule_id,
                                       enroll_date_forward,
                                       enroll_open,
                                       test,
                                       send_email,
                                       waitlist,
                                       waitlist_entry_id)
    end

    def to_custom_enroll_date_forward
      DateTimeHelper.to_rfc3339(enroll_date_forward)
    end

    def to_custom_enroll_open(hash, key)
      DateTimeHelper.to_rfc3339_array(enroll_open, hash, key)
    end
  end
end
