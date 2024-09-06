# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # A Client DTO with Suspension Informatoin
  class ClientWithSuspensionInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A Client DTO with Suspension Informatoin
    # @return [ClientSuspensionInfo]
    attr_accessor :suspension_info

    # The gender of staff member with whom the client prefers to book
    # appointments.
    # @return [AppointmentGenderPreference1Enum]
    attr_accessor :appointment_gender_preference

    # The client’s date of birth.
    # @return [DateTime]
    attr_accessor :birth_date

    # The client’s country.
    # @return [String]
    attr_accessor :country

    # The date the client’s profile was created and added to the business,
    # either by the client from the online store, or by a staff member. This
    # value always returns in the format `yyyy-mm-ddThh:mm:ss:ms`.
    # @return [DateTime]
    attr_accessor :creation_date

    # Contains information about the custom fields used for clients in the
    # business.
    # @return [Array[CustomClientFieldValue]]
    attr_accessor :custom_client_fields

    # A client credit card.
    # @return [ClientCreditCard]
    attr_accessor :client_credit_card

    # Contains the IDs of the client’s assigned ClientIndexes and
    # ClientIndexValues.
    # If an index is already assigned to the client, it is overwritten with the
    # passed index value. You cannot currently remove client indexes using the
    # Public API. Only the indexes passed in the request are returned in the
    # response.
    # @return [Array[AssignedClientIndex]]
    attr_accessor :client_indexes

    # Contains information about the relationship between two clients.
    # This parameter does not include all of the relationships assigned to the
    # client, only the ones passed in the request.
    # @return [Array[ClientRelationship]]
    attr_accessor :client_relationships

    # The date of the client’s first booked appointment at the business.
    # @return [DateTime]
    attr_accessor :first_appointment_date

    # The date of the clients first booked class at the business.
    # @return [DateTime]
    attr_accessor :first_class_date

    # The client’s first name.
    # @return [String]
    attr_accessor :first_name

    # The client’s ID, as configured by the business owner. This is the client’s
    # barcode ID if the business owner assigns barcodes to clients. This ID is
    # used throughout the Public API for client-related Public API calls. When
    # used in a POST `UpdateClient` request, the `Id` is used to identify the
    # client for the update.
    # @return [String]
    attr_accessor :id

    # When `true`, indicates that the client should be marked as a company at
    # the business.<br />
    # When `false`, indicates the client is an individual and does not represent
    # a company.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_company

    # This value is set only if the business owner allows individuals to be
    # prospects.<br />
    # When `true`, indicates that the client should be marked as a prospect for
    # the business.<br />
    # When `false`, indicates that the client should not be marked as a prospect
    # for the business.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_prospect

    # The client’s last name.
    # @return [String]
    attr_accessor :last_name

    # The client’s last name.
    # @return [Liability]
    attr_accessor :liability

    # Passing `true` sets the client’s liability information as follows:
    # * `IsReleased` is set to `true`.
    # * `AgreementDate` is set to the time zone of the business when the call
    # was processed.
    # * `ReleasedBy` is set to `null` if the call is made by the client, `0` if
    # the call was made by the business owner, or to a specific staff member’s
    # ID if a staff member made the call.
    # Passing `false` sets the client’s liability information as follows:
    # * `IsReleased` is set to `false`.
    # * `AgreementDate` is set to `null`.
    # * `ReleasedBy` is set to `null`.
    # @return [TrueClass | FalseClass]
    attr_accessor :liability_release

    # The ID of the [membership
    # icon](https://support.mindbodyonline.com/s/article/203259703-Membership-Se
    # tup-screen?language=en_US) displayed next to the client’s name, if the
    # client has a membership on their account.
    # @return [Integer]
    attr_accessor :membership_icon

    # The client’s mobile provider.
    # @return [Integer]
    attr_accessor :mobile_provider

    # Any notes entered on the client’s account by staff members. This value
    # should never be shown to clients unless the business owner has a specific
    # reason for showing them.
    # @return [String]
    attr_accessor :notes

    # The client’s state.
    # @return [String]
    attr_accessor :state

    # The client’s system-generated ID at the business. This value cannot be
    # changed by business owners and is always unique across all clients at the
    # business. This ID is not widely used in the Public API, but can be used by
    # your application to uniquely identify clients.
    # @return [Integer]
    attr_accessor :unique_id

    # The UTC date and time when the client’s information was last modified.
    # @return [DateTime]
    attr_accessor :last_modified_date_time

    # Contains any red alert information entered by the business owner for the
    # client.
    # @return [String]
    attr_accessor :red_alert

    # Contains any yellow alert information entered by the business owner for
    # the client.
    # @return [String]
    attr_accessor :yellow_alert

    # The client’s middle name.
    # @return [String]
    attr_accessor :middle_name

    # The client’s middle name.
    # @return [ProspectStage]
    attr_accessor :prospect_stage

    # The client’s email address.
    # @return [String]
    attr_accessor :email

    # The client’s mobile phone number.
    # @return [String]
    attr_accessor :mobile_phone

    # The client’s home phone number.
    # @return [String]
    attr_accessor :home_phone

    # The client’s work phone number.
    # @return [String]
    attr_accessor :work_phone

    # The client’s current [account
    # balance](https://mindbody-online-support.force.com/support/s/article/20326
    # 2013-Adding-account-payments-video-tutorial?language=en_US).
    # @return [Float]
    attr_accessor :account_balance

    # The first line of the client’s street address.
    # @return [String]
    attr_accessor :address_line1

    # The second line of the client’s street address, if needed.
    # @return [String]
    attr_accessor :address_line2

    # The client’s city.
    # @return [String]
    attr_accessor :city

    # The client’s postal code.
    # @return [String]
    attr_accessor :postal_code

    # The client’s work phone extension number.
    # @return [String]
    attr_accessor :work_extension

    # Specifies how the client was referred to the business. You can get a list
    # of possible strings using the `GetClientReferralTypes` endpoint.
    # @return [String]
    attr_accessor :referred_by

    # The URL of the client’s photo for the client profile.
    # @return [String]
    attr_accessor :photo_url

    # The name of the client’s emergency contact.
    # @return [String]
    attr_accessor :emergency_contact_info_name

    # The email address of the client’s emergency contact.
    # @return [String]
    attr_accessor :emergency_contact_info_email

    # The phone number of the client’s emergency contact.
    # @return [String]
    attr_accessor :emergency_contact_info_phone

    # The client’s relationship with the emergency contact.
    # @return [String]
    attr_accessor :emergency_contact_info_relationship

    # The gender of the client.
    # @return [String]
    attr_accessor :gender

    # The last [formula
    # note](https://support.mindbodyonline.com/s/article/203259903-Appointments-
    # Formula-notes?language=en_US) entered for the client.
    # @return [String]
    attr_accessor :last_formula_notes

    # When `true`, indicates that the client’s profile is marked as active on
    # the site.<br />
    # When `false`, the client’s profile is inactive.
    # Defaults to `true` based on the assumption that if a client is currently
    # inactive OR is to be marked inactive, this property will explicitly be
    # mapped/set to `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A list of sales representatives.
    # @return [Array[SalesRep]]
    attr_accessor :sales_reps

    # The status of the client in the business. Possible values are:
    # * Declined
    # * Non-Member
    # * Active
    # * Expired
    # * Suspended
    # * Terminated
    # @return [String]
    attr_accessor :status

    # The action taken.
    # @return [Action1Enum]
    attr_accessor :action

    # When `true`, indicates that the client has opted to receive general
    # account notifications by email. This property is editable. 
    # <br />Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_account_emails

    # When `true`, indicates that the client has opted to receive general
    # account notifications by text message. This parameter cannot be updated by
    # developers. If included in a request, it is ignored.
    # @return [TrueClass | FalseClass]
    attr_accessor :send_account_texts

    # When `true`, indicates that the client has opted to receive promotional
    # notifications by email. This property is editable. 
    # <br />Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_promotional_emails

    # When `true`, indicates that the client has opted to receive promotional
    # notifications by text message. This parameter cannot be updated by
    # developers. If included in a request, it is ignored.
    # @return [TrueClass | FalseClass]
    attr_accessor :send_promotional_texts

    # When `true`, indicates that the client has opted to receive schedule
    # notifications by email. This property is editable. 
    # <br />Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_schedule_emails

    # When `true`, indicates that the client has opted to receive schedule
    # notifications by text message. This parameter cannot be updated by
    # developers. If included in a request, it is ignored.
    # @return [TrueClass | FalseClass]
    attr_accessor :send_schedule_texts

    # When `true`, indicates that the client has opted to receive schedule
    # notifications by text message. This parameter cannot be updated by
    # developers. If included in a request, it is ignored.
    # @return [Location]
    attr_accessor :home_location

    # The clients locker number.
    # @return [String]
    attr_accessor :locker_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['suspension_info'] = 'SuspensionInfo'
      @_hash['appointment_gender_preference'] = 'AppointmentGenderPreference'
      @_hash['birth_date'] = 'BirthDate'
      @_hash['country'] = 'Country'
      @_hash['creation_date'] = 'CreationDate'
      @_hash['custom_client_fields'] = 'CustomClientFields'
      @_hash['client_credit_card'] = 'ClientCreditCard'
      @_hash['client_indexes'] = 'ClientIndexes'
      @_hash['client_relationships'] = 'ClientRelationships'
      @_hash['first_appointment_date'] = 'FirstAppointmentDate'
      @_hash['first_class_date'] = 'FirstClassDate'
      @_hash['first_name'] = 'FirstName'
      @_hash['id'] = 'Id'
      @_hash['is_company'] = 'IsCompany'
      @_hash['is_prospect'] = 'IsProspect'
      @_hash['last_name'] = 'LastName'
      @_hash['liability'] = 'Liability'
      @_hash['liability_release'] = 'LiabilityRelease'
      @_hash['membership_icon'] = 'MembershipIcon'
      @_hash['mobile_provider'] = 'MobileProvider'
      @_hash['notes'] = 'Notes'
      @_hash['state'] = 'State'
      @_hash['unique_id'] = 'UniqueId'
      @_hash['last_modified_date_time'] = 'LastModifiedDateTime'
      @_hash['red_alert'] = 'RedAlert'
      @_hash['yellow_alert'] = 'YellowAlert'
      @_hash['middle_name'] = 'MiddleName'
      @_hash['prospect_stage'] = 'ProspectStage'
      @_hash['email'] = 'Email'
      @_hash['mobile_phone'] = 'MobilePhone'
      @_hash['home_phone'] = 'HomePhone'
      @_hash['work_phone'] = 'WorkPhone'
      @_hash['account_balance'] = 'AccountBalance'
      @_hash['address_line1'] = 'AddressLine1'
      @_hash['address_line2'] = 'AddressLine2'
      @_hash['city'] = 'City'
      @_hash['postal_code'] = 'PostalCode'
      @_hash['work_extension'] = 'WorkExtension'
      @_hash['referred_by'] = 'ReferredBy'
      @_hash['photo_url'] = 'PhotoUrl'
      @_hash['emergency_contact_info_name'] = 'EmergencyContactInfoName'
      @_hash['emergency_contact_info_email'] = 'EmergencyContactInfoEmail'
      @_hash['emergency_contact_info_phone'] = 'EmergencyContactInfoPhone'
      @_hash['emergency_contact_info_relationship'] =
        'EmergencyContactInfoRelationship'
      @_hash['gender'] = 'Gender'
      @_hash['last_formula_notes'] = 'LastFormulaNotes'
      @_hash['active'] = 'Active'
      @_hash['sales_reps'] = 'SalesReps'
      @_hash['status'] = 'Status'
      @_hash['action'] = 'Action'
      @_hash['send_account_emails'] = 'SendAccountEmails'
      @_hash['send_account_texts'] = 'SendAccountTexts'
      @_hash['send_promotional_emails'] = 'SendPromotionalEmails'
      @_hash['send_promotional_texts'] = 'SendPromotionalTexts'
      @_hash['send_schedule_emails'] = 'SendScheduleEmails'
      @_hash['send_schedule_texts'] = 'SendScheduleTexts'
      @_hash['home_location'] = 'HomeLocation'
      @_hash['locker_number'] = 'LockerNumber'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        suspension_info
        appointment_gender_preference
        birth_date
        country
        creation_date
        custom_client_fields
        client_credit_card
        client_indexes
        client_relationships
        first_appointment_date
        first_class_date
        first_name
        id
        is_company
        is_prospect
        last_name
        liability
        liability_release
        membership_icon
        mobile_provider
        notes
        state
        unique_id
        last_modified_date_time
        red_alert
        yellow_alert
        middle_name
        prospect_stage
        email
        mobile_phone
        home_phone
        work_phone
        account_balance
        address_line1
        address_line2
        city
        postal_code
        work_extension
        referred_by
        photo_url
        emergency_contact_info_name
        emergency_contact_info_email
        emergency_contact_info_phone
        emergency_contact_info_relationship
        gender
        last_formula_notes
        active
        sales_reps
        status
        action
        send_account_emails
        send_account_texts
        send_promotional_emails
        send_promotional_texts
        send_schedule_emails
        send_schedule_texts
        home_location
        locker_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(suspension_info = SKIP, appointment_gender_preference = SKIP,
                   birth_date = SKIP, country = SKIP, creation_date = SKIP,
                   custom_client_fields = SKIP, client_credit_card = SKIP,
                   client_indexes = SKIP, client_relationships = SKIP,
                   first_appointment_date = SKIP, first_class_date = SKIP,
                   first_name = SKIP, id = SKIP, is_company = SKIP,
                   is_prospect = SKIP, last_name = SKIP, liability = SKIP,
                   liability_release = SKIP, membership_icon = SKIP,
                   mobile_provider = SKIP, notes = SKIP, state = SKIP,
                   unique_id = SKIP, last_modified_date_time = SKIP,
                   red_alert = SKIP, yellow_alert = SKIP, middle_name = SKIP,
                   prospect_stage = SKIP, email = SKIP, mobile_phone = SKIP,
                   home_phone = SKIP, work_phone = SKIP, account_balance = SKIP,
                   address_line1 = SKIP, address_line2 = SKIP, city = SKIP,
                   postal_code = SKIP, work_extension = SKIP,
                   referred_by = SKIP, photo_url = SKIP,
                   emergency_contact_info_name = SKIP,
                   emergency_contact_info_email = SKIP,
                   emergency_contact_info_phone = SKIP,
                   emergency_contact_info_relationship = SKIP, gender = SKIP,
                   last_formula_notes = SKIP, active = SKIP, sales_reps = SKIP,
                   status = SKIP, action = SKIP, send_account_emails = SKIP,
                   send_account_texts = SKIP, send_promotional_emails = SKIP,
                   send_promotional_texts = SKIP, send_schedule_emails = SKIP,
                   send_schedule_texts = SKIP, home_location = SKIP,
                   locker_number = SKIP)
      @suspension_info = suspension_info unless suspension_info == SKIP
      unless appointment_gender_preference == SKIP
        @appointment_gender_preference =
          appointment_gender_preference
      end
      @birth_date = birth_date unless birth_date == SKIP
      @country = country unless country == SKIP
      @creation_date = creation_date unless creation_date == SKIP
      @custom_client_fields = custom_client_fields unless custom_client_fields == SKIP
      @client_credit_card = client_credit_card unless client_credit_card == SKIP
      @client_indexes = client_indexes unless client_indexes == SKIP
      @client_relationships = client_relationships unless client_relationships == SKIP
      @first_appointment_date = first_appointment_date unless first_appointment_date == SKIP
      @first_class_date = first_class_date unless first_class_date == SKIP
      @first_name = first_name unless first_name == SKIP
      @id = id unless id == SKIP
      @is_company = is_company unless is_company == SKIP
      @is_prospect = is_prospect unless is_prospect == SKIP
      @last_name = last_name unless last_name == SKIP
      @liability = liability unless liability == SKIP
      @liability_release = liability_release unless liability_release == SKIP
      @membership_icon = membership_icon unless membership_icon == SKIP
      @mobile_provider = mobile_provider unless mobile_provider == SKIP
      @notes = notes unless notes == SKIP
      @state = state unless state == SKIP
      @unique_id = unique_id unless unique_id == SKIP
      @last_modified_date_time = last_modified_date_time unless last_modified_date_time == SKIP
      @red_alert = red_alert unless red_alert == SKIP
      @yellow_alert = yellow_alert unless yellow_alert == SKIP
      @middle_name = middle_name unless middle_name == SKIP
      @prospect_stage = prospect_stage unless prospect_stage == SKIP
      @email = email unless email == SKIP
      @mobile_phone = mobile_phone unless mobile_phone == SKIP
      @home_phone = home_phone unless home_phone == SKIP
      @work_phone = work_phone unless work_phone == SKIP
      @account_balance = account_balance unless account_balance == SKIP
      @address_line1 = address_line1 unless address_line1 == SKIP
      @address_line2 = address_line2 unless address_line2 == SKIP
      @city = city unless city == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @work_extension = work_extension unless work_extension == SKIP
      @referred_by = referred_by unless referred_by == SKIP
      @photo_url = photo_url unless photo_url == SKIP
      unless emergency_contact_info_name == SKIP
        @emergency_contact_info_name =
          emergency_contact_info_name
      end
      unless emergency_contact_info_email == SKIP
        @emergency_contact_info_email =
          emergency_contact_info_email
      end
      unless emergency_contact_info_phone == SKIP
        @emergency_contact_info_phone =
          emergency_contact_info_phone
      end
      unless emergency_contact_info_relationship == SKIP
        @emergency_contact_info_relationship =
          emergency_contact_info_relationship
      end
      @gender = gender unless gender == SKIP
      @last_formula_notes = last_formula_notes unless last_formula_notes == SKIP
      @active = active unless active == SKIP
      @sales_reps = sales_reps unless sales_reps == SKIP
      @status = status unless status == SKIP
      @action = action unless action == SKIP
      @send_account_emails = send_account_emails unless send_account_emails == SKIP
      @send_account_texts = send_account_texts unless send_account_texts == SKIP
      @send_promotional_emails = send_promotional_emails unless send_promotional_emails == SKIP
      @send_promotional_texts = send_promotional_texts unless send_promotional_texts == SKIP
      @send_schedule_emails = send_schedule_emails unless send_schedule_emails == SKIP
      @send_schedule_texts = send_schedule_texts unless send_schedule_texts == SKIP
      @home_location = home_location unless home_location == SKIP
      @locker_number = locker_number unless locker_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      suspension_info = ClientSuspensionInfo.from_hash(hash['SuspensionInfo']) if
        hash['SuspensionInfo']
      appointment_gender_preference =
        hash.key?('AppointmentGenderPreference') ? hash['AppointmentGenderPreference'] : SKIP
      birth_date = if hash.key?('BirthDate')
                     (DateTimeHelper.from_rfc3339(hash['BirthDate']) if hash['BirthDate'])
                   else
                     SKIP
                   end
      country = hash.key?('Country') ? hash['Country'] : SKIP
      creation_date = if hash.key?('CreationDate')
                        (DateTimeHelper.from_rfc3339(hash['CreationDate']) if hash['CreationDate'])
                      else
                        SKIP
                      end
      # Parameter is an array, so we need to iterate through it
      custom_client_fields = nil
      unless hash['CustomClientFields'].nil?
        custom_client_fields = []
        hash['CustomClientFields'].each do |structure|
          custom_client_fields << (CustomClientFieldValue.from_hash(structure) if structure)
        end
      end

      custom_client_fields = SKIP unless hash.key?('CustomClientFields')
      client_credit_card = ClientCreditCard.from_hash(hash['ClientCreditCard']) if
        hash['ClientCreditCard']
      # Parameter is an array, so we need to iterate through it
      client_indexes = nil
      unless hash['ClientIndexes'].nil?
        client_indexes = []
        hash['ClientIndexes'].each do |structure|
          client_indexes << (AssignedClientIndex.from_hash(structure) if structure)
        end
      end

      client_indexes = SKIP unless hash.key?('ClientIndexes')
      # Parameter is an array, so we need to iterate through it
      client_relationships = nil
      unless hash['ClientRelationships'].nil?
        client_relationships = []
        hash['ClientRelationships'].each do |structure|
          client_relationships << (ClientRelationship.from_hash(structure) if structure)
        end
      end

      client_relationships = SKIP unless hash.key?('ClientRelationships')
      first_appointment_date = if hash.key?('FirstAppointmentDate')
                                 (DateTimeHelper.from_rfc3339(hash['FirstAppointmentDate']) if hash['FirstAppointmentDate'])
                               else
                                 SKIP
                               end
      first_class_date = if hash.key?('FirstClassDate')
                           (DateTimeHelper.from_rfc3339(hash['FirstClassDate']) if hash['FirstClassDate'])
                         else
                           SKIP
                         end
      first_name = hash.key?('FirstName') ? hash['FirstName'] : SKIP
      id = hash.key?('Id') ? hash['Id'] : SKIP
      is_company = hash.key?('IsCompany') ? hash['IsCompany'] : SKIP
      is_prospect = hash.key?('IsProspect') ? hash['IsProspect'] : SKIP
      last_name = hash.key?('LastName') ? hash['LastName'] : SKIP
      liability = Liability.from_hash(hash['Liability']) if hash['Liability']
      liability_release =
        hash.key?('LiabilityRelease') ? hash['LiabilityRelease'] : SKIP
      membership_icon =
        hash.key?('MembershipIcon') ? hash['MembershipIcon'] : SKIP
      mobile_provider =
        hash.key?('MobileProvider') ? hash['MobileProvider'] : SKIP
      notes = hash.key?('Notes') ? hash['Notes'] : SKIP
      state = hash.key?('State') ? hash['State'] : SKIP
      unique_id = hash.key?('UniqueId') ? hash['UniqueId'] : SKIP
      last_modified_date_time = if hash.key?('LastModifiedDateTime')
                                  (DateTimeHelper.from_rfc3339(hash['LastModifiedDateTime']) if hash['LastModifiedDateTime'])
                                else
                                  SKIP
                                end
      red_alert = hash.key?('RedAlert') ? hash['RedAlert'] : SKIP
      yellow_alert = hash.key?('YellowAlert') ? hash['YellowAlert'] : SKIP
      middle_name = hash.key?('MiddleName') ? hash['MiddleName'] : SKIP
      prospect_stage = ProspectStage.from_hash(hash['ProspectStage']) if hash['ProspectStage']
      email = hash.key?('Email') ? hash['Email'] : SKIP
      mobile_phone = hash.key?('MobilePhone') ? hash['MobilePhone'] : SKIP
      home_phone = hash.key?('HomePhone') ? hash['HomePhone'] : SKIP
      work_phone = hash.key?('WorkPhone') ? hash['WorkPhone'] : SKIP
      account_balance =
        hash.key?('AccountBalance') ? hash['AccountBalance'] : SKIP
      address_line1 = hash.key?('AddressLine1') ? hash['AddressLine1'] : SKIP
      address_line2 = hash.key?('AddressLine2') ? hash['AddressLine2'] : SKIP
      city = hash.key?('City') ? hash['City'] : SKIP
      postal_code = hash.key?('PostalCode') ? hash['PostalCode'] : SKIP
      work_extension = hash.key?('WorkExtension') ? hash['WorkExtension'] : SKIP
      referred_by = hash.key?('ReferredBy') ? hash['ReferredBy'] : SKIP
      photo_url = hash.key?('PhotoUrl') ? hash['PhotoUrl'] : SKIP
      emergency_contact_info_name =
        hash.key?('EmergencyContactInfoName') ? hash['EmergencyContactInfoName'] : SKIP
      emergency_contact_info_email =
        hash.key?('EmergencyContactInfoEmail') ? hash['EmergencyContactInfoEmail'] : SKIP
      emergency_contact_info_phone =
        hash.key?('EmergencyContactInfoPhone') ? hash['EmergencyContactInfoPhone'] : SKIP
      emergency_contact_info_relationship =
        hash.key?('EmergencyContactInfoRelationship') ? hash['EmergencyContactInfoRelationship'] : SKIP
      gender = hash.key?('Gender') ? hash['Gender'] : SKIP
      last_formula_notes =
        hash.key?('LastFormulaNotes') ? hash['LastFormulaNotes'] : SKIP
      active = hash.key?('Active') ? hash['Active'] : SKIP
      # Parameter is an array, so we need to iterate through it
      sales_reps = nil
      unless hash['SalesReps'].nil?
        sales_reps = []
        hash['SalesReps'].each do |structure|
          sales_reps << (SalesRep.from_hash(structure) if structure)
        end
      end

      sales_reps = SKIP unless hash.key?('SalesReps')
      status = hash.key?('Status') ? hash['Status'] : SKIP
      action = hash.key?('Action') ? hash['Action'] : SKIP
      send_account_emails =
        hash.key?('SendAccountEmails') ? hash['SendAccountEmails'] : SKIP
      send_account_texts =
        hash.key?('SendAccountTexts') ? hash['SendAccountTexts'] : SKIP
      send_promotional_emails =
        hash.key?('SendPromotionalEmails') ? hash['SendPromotionalEmails'] : SKIP
      send_promotional_texts =
        hash.key?('SendPromotionalTexts') ? hash['SendPromotionalTexts'] : SKIP
      send_schedule_emails =
        hash.key?('SendScheduleEmails') ? hash['SendScheduleEmails'] : SKIP
      send_schedule_texts =
        hash.key?('SendScheduleTexts') ? hash['SendScheduleTexts'] : SKIP
      home_location = Location.from_hash(hash['HomeLocation']) if hash['HomeLocation']
      locker_number = hash.key?('LockerNumber') ? hash['LockerNumber'] : SKIP

      # Create object from extracted values.
      ClientWithSuspensionInfo.new(suspension_info,
                                   appointment_gender_preference,
                                   birth_date,
                                   country,
                                   creation_date,
                                   custom_client_fields,
                                   client_credit_card,
                                   client_indexes,
                                   client_relationships,
                                   first_appointment_date,
                                   first_class_date,
                                   first_name,
                                   id,
                                   is_company,
                                   is_prospect,
                                   last_name,
                                   liability,
                                   liability_release,
                                   membership_icon,
                                   mobile_provider,
                                   notes,
                                   state,
                                   unique_id,
                                   last_modified_date_time,
                                   red_alert,
                                   yellow_alert,
                                   middle_name,
                                   prospect_stage,
                                   email,
                                   mobile_phone,
                                   home_phone,
                                   work_phone,
                                   account_balance,
                                   address_line1,
                                   address_line2,
                                   city,
                                   postal_code,
                                   work_extension,
                                   referred_by,
                                   photo_url,
                                   emergency_contact_info_name,
                                   emergency_contact_info_email,
                                   emergency_contact_info_phone,
                                   emergency_contact_info_relationship,
                                   gender,
                                   last_formula_notes,
                                   active,
                                   sales_reps,
                                   status,
                                   action,
                                   send_account_emails,
                                   send_account_texts,
                                   send_promotional_emails,
                                   send_promotional_texts,
                                   send_schedule_emails,
                                   send_schedule_texts,
                                   home_location,
                                   locker_number)
    end

    def to_custom_birth_date
      DateTimeHelper.to_rfc3339(birth_date)
    end

    def to_custom_creation_date
      DateTimeHelper.to_rfc3339(creation_date)
    end

    def to_custom_first_appointment_date
      DateTimeHelper.to_rfc3339(first_appointment_date)
    end

    def to_custom_first_class_date
      DateTimeHelper.to_rfc3339(first_class_date)
    end

    def to_custom_last_modified_date_time
      DateTimeHelper.to_rfc3339(last_modified_date_time)
    end
  end
end
