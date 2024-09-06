# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # AddClientRequest Model.
  class AddClientRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The client’s current [account
    # balance](https://mindbody-online-support.force.com/support/s/article/20326
    # 2013-Adding-account-payments-video-tutorial?language=en_US).
    # @return [Float]
    attr_accessor :account_balance

    # The action taken.
    # @return [Action1Enum]
    attr_accessor :action

    # When `true`, indicates that the client is active at the site.<br />
    # When `false`, indicates that the client is not active at the site.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # The first line of the client’s street address.
    # @return [String]
    attr_accessor :address_line1

    # The second line of the client’s street address, if needed.
    # @return [String]
    attr_accessor :address_line2

    # When `true`, indicates that the client prefers services to be provided by
    # a male service provider.<br />
    # When `false`, indicates that the client prefers services to be provided by
    # a female service provider.<br />
    # When `null`, indicates that the client has no preference.
    # Default: **null**
    # @return [TrueClass | FalseClass]
    attr_accessor :appt_gender_pref_male

    # The client’s date of birth.
    # @return [DateTime]
    attr_accessor :birth_date

    # The client’s city.
    # @return [String]
    attr_accessor :city

    # A client credit card.
    # @return [ClientCreditCard]
    attr_accessor :client_credit_card

    # Contains a list of the indexes and client index values to be assigned to
    # the client.
    # If an index is already assigned to the client, it is overwritten with the
    # passed index value. You cannot currently remove client indexes using the
    # Public API. Only the indexes passed in the request are returned in the
    # response.
    # @return [Array[AssignedClientIndex]]
    attr_accessor :client_indexes

    # Contains information about client relationships that were added or updated
    # for the client. This parameter does not include all of the relationships
    # assigned to the client, only the ones passed in the request.
    # @return [Array[ClientRelationship]]
    attr_accessor :client_relationships

    # The country in which the client is located.
    # @return [String]
    attr_accessor :country

    # The date when the client was added to the business, either by the client
    # from the online store or by a staff member at the subscriber’s business.
    # This value always returns in the format yyyy-mm-ddThh:mm:ss:ms.
    # @return [DateTime]
    attr_accessor :creation_date

    # Contains information about the custom fields used for clients in the
    # business.
    # @return [Array[CustomClientFieldValue]]
    attr_accessor :custom_client_fields

    # The client’s email address.
    # @return [String]
    attr_accessor :email

    # The email address of the client’s emergency contact.<br />
    # For more information, see [Children’s program features(emergency contact
    # information)](https://support.mindbodyonline.com/s/article/203259283-Child
    # ren-s-program-features-emergency-contact-information?language=en_US).
    # @return [String]
    attr_accessor :emergency_contact_info_email

    # The name of the client’s emergency contact.
    # @return [String]
    attr_accessor :emergency_contact_info_name

    # The phone number of the client’s emergency contact.
    # @return [String]
    attr_accessor :emergency_contact_info_phone

    # The client’s relationship with the emergency contact, for example, mother
    # or spouse.
    # @return [String]
    attr_accessor :emergency_contact_info_relationship

    # The date of the client’s first booked appointment at the business.
    # @return [DateTime]
    attr_accessor :first_appointment_date

    # The client’s first name. You must specify a first name when you add a
    # client.
    # @return [String]
    attr_accessor :first_name

    # The client’s gender.
    # @return [String]
    attr_accessor :gender

    # The client’s gender.
    # @return [Location]
    attr_accessor :home_location

    # The client’s home phone number.
    # @return [String]
    attr_accessor :home_phone

    # When `true`, indicates that the client should be marked as a company at
    # the business.<br />
    # When `false`, indicates the client is an individual and does not represent
    # a company.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_company

    # This value is set only if the business owner allows individuals to be
    # prospects.<br />
    # If the business owner has enabled the setting to default new client as a
    # Prospect, the isProspect value will always be true. Otherwise,<br />
    # When `true`, indicates that the client should be marked as a prospect for
    # the business.<br />
    # When `false`, indicates that the client should not be marked as a prospect
    # for the business.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_prospect

    # The last [formula
    # note](https://support.mindbodyonline.com/s/article/203259903-Appointments-
    # Formula-notes?language=en_US) entered for the client.
    # @return [String]
    attr_accessor :last_formula_notes

    # The UTC date and time when the client’s information was last modified.
    # @return [DateTime]
    attr_accessor :last_modified_date_time

    # The client’s last name. You must specify a last name when you add a
    # client.
    # @return [String]
    attr_accessor :last_name

    # The client’s last name. You must specify a last name when you add a
    # client.
    # @return [Liability]
    attr_accessor :liability

    # When `true`, sets the client’s liability information as follows:
    # * `IsReleased` is set to true.
    # * `AgreementDate` is set to the time zone of the business when the call
    # was processed.
    # * `ReleasedBy` is set to `null` if the call is made by the client, `0` if
    # the call was made by the business owner, or to a specific staff member’s
    # ID if a staff member made the call.
    # When `false`, sets the client’s liability information as follows:
    # * `IsReleased` is set to `false`.
    # * `AgreementDate` is set to `null`.
    # * `ReleasedBy` is set to `null`.
    # @return [TrueClass | FalseClass]
    attr_accessor :liability_release

    # The ID of the membership icon displayed next to the client’s name, if the
    # client has a membership on their account.
    # @return [Integer]
    attr_accessor :membership_icon

    # The client’s middle name.
    # @return [String]
    attr_accessor :middle_name

    # The client’s mobile phone number.
    # @return [String]
    attr_accessor :mobile_phone

    # The client's mobile provider.
    # @return [Integer]
    attr_accessor :mobile_provider

    # The new RSSID to be used for the client. Use `NewId` to assign a specific
    # alphanumeric value to be a client’s ID. This RSSID must be unique within
    # the subscriber’s site. If this is a cross-regional update, the RSSID must
    # be unique across the region. If the requested value is already in use, the
    # call returns an error.
    # @return [String]
    attr_accessor :new_id

    # Any notes entered on the client’s account by staff members. This value
    # should never be shown to clients unless the business owner has a specific
    # reason for showing them.
    # @return [String]
    attr_accessor :notes

    # The URL for the client’s photo, if one has been uploaded.
    # @return [String]
    attr_accessor :photo_url

    # The client’s postal code.
    # @return [String]
    attr_accessor :postal_code

    # The client’s postal code.
    # @return [ProspectStage]
    attr_accessor :prospect_stage

    # Contains any red alert information entered by the business owner for the
    # client.
    # @return [String]
    attr_accessor :red_alert

    # Specifies how the client was referred to the business. You can get a list
    # of possible strings using the `GET ClientReferralTypes` endpoint.<br />
    # For more information, see [Referral types and referral
    # subtypes](https://support.mindbodyonline.com/s/article/203259393-Referral-
    # types-and-referral-subtypes?language=en_US).
    # @return [String]
    attr_accessor :referred_by

    # Contains information about the sales representatives to be assigned to the
    # new client.
    # @return [Array[SalesRep]]
    attr_accessor :sales_reps

    # The ID of the site.
    # @return [Integer]
    attr_accessor :site_id

    # The client’s state.
    # @return [String]
    attr_accessor :state

    # The client’s status.
    # @return [String]
    attr_accessor :status

    # When `true`, indicates that test mode is enabled. The method is validated,
    # but no client data is added or updated.<br />
    # Default: **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :test

    # The client’s system-generated ID at the business. This value cannot be
    # changed by business owners and is always unique across all clients at the
    # business. This ID is not widely used in the Public API, but can be used by
    # your application to uniquely identify clients.
    # @return [Integer]
    attr_accessor :unique_id

    # The client’s work phone extension number.
    # @return [String]
    attr_accessor :work_extension

    # The client’s work phone number.
    # @return [String]
    attr_accessor :work_phone

    # Contains any yellow alert information entered by the business owner for
    # the client.
    # @return [String]
    attr_accessor :yellow_alert

    # When `true`, indicates that the client opts to receive schedule emails.
    # Default : **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_schedule_emails

    # When `true`, indicates that the client opts to receive account emails.
    # Default : **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_account_emails

    # When `true`, indicates that the client opts to receive promotional emails.
    # Default : **false**
    # @return [TrueClass | FalseClass]
    attr_accessor :send_promotional_emails

    # When `true`, indicates that the client opts to receive schedule texts.
    # @return [TrueClass | FalseClass]
    attr_accessor :send_schedule_texts

    # When `true`, indicates that the client opts to receive account texts.
    # @return [TrueClass | FalseClass]
    attr_accessor :send_account_texts

    # When `true`, indicates that the client opts to receive promotional texts.
    # @return [TrueClass | FalseClass]
    attr_accessor :send_promotional_texts

    # The clients locker number.
    # @return [String]
    attr_accessor :locker_number

    # When `true`, indicates that the client opts to reactive existing Inactive
    # client.
    # @return [TrueClass | FalseClass]
    attr_accessor :reactivate_inactive_client

    # The ID of the LeadChannel from LeadManagement. This parameter is required
    # by LeadManagement to track the LeadChannel from where the new client is
    # added.
    # If this value is not supplied then it won't save anything.
    # @return [Integer]
    attr_accessor :lead_channel_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_balance'] = 'AccountBalance'
      @_hash['action'] = 'Action'
      @_hash['active'] = 'Active'
      @_hash['address_line1'] = 'AddressLine1'
      @_hash['address_line2'] = 'AddressLine2'
      @_hash['appt_gender_pref_male'] = 'ApptGenderPrefMale'
      @_hash['birth_date'] = 'BirthDate'
      @_hash['city'] = 'City'
      @_hash['client_credit_card'] = 'ClientCreditCard'
      @_hash['client_indexes'] = 'ClientIndexes'
      @_hash['client_relationships'] = 'ClientRelationships'
      @_hash['country'] = 'Country'
      @_hash['creation_date'] = 'CreationDate'
      @_hash['custom_client_fields'] = 'CustomClientFields'
      @_hash['email'] = 'Email'
      @_hash['emergency_contact_info_email'] = 'EmergencyContactInfoEmail'
      @_hash['emergency_contact_info_name'] = 'EmergencyContactInfoName'
      @_hash['emergency_contact_info_phone'] = 'EmergencyContactInfoPhone'
      @_hash['emergency_contact_info_relationship'] =
        'EmergencyContactInfoRelationship'
      @_hash['first_appointment_date'] = 'FirstAppointmentDate'
      @_hash['first_name'] = 'FirstName'
      @_hash['gender'] = 'Gender'
      @_hash['home_location'] = 'HomeLocation'
      @_hash['home_phone'] = 'HomePhone'
      @_hash['is_company'] = 'IsCompany'
      @_hash['is_prospect'] = 'IsProspect'
      @_hash['last_formula_notes'] = 'LastFormulaNotes'
      @_hash['last_modified_date_time'] = 'LastModifiedDateTime'
      @_hash['last_name'] = 'LastName'
      @_hash['liability'] = 'Liability'
      @_hash['liability_release'] = 'LiabilityRelease'
      @_hash['membership_icon'] = 'MembershipIcon'
      @_hash['middle_name'] = 'MiddleName'
      @_hash['mobile_phone'] = 'MobilePhone'
      @_hash['mobile_provider'] = 'MobileProvider'
      @_hash['new_id'] = 'NewId'
      @_hash['notes'] = 'Notes'
      @_hash['photo_url'] = 'PhotoUrl'
      @_hash['postal_code'] = 'PostalCode'
      @_hash['prospect_stage'] = 'ProspectStage'
      @_hash['red_alert'] = 'RedAlert'
      @_hash['referred_by'] = 'ReferredBy'
      @_hash['sales_reps'] = 'SalesReps'
      @_hash['site_id'] = 'SiteId'
      @_hash['state'] = 'State'
      @_hash['status'] = 'Status'
      @_hash['test'] = 'Test'
      @_hash['unique_id'] = 'UniqueId'
      @_hash['work_extension'] = 'WorkExtension'
      @_hash['work_phone'] = 'WorkPhone'
      @_hash['yellow_alert'] = 'YellowAlert'
      @_hash['send_schedule_emails'] = 'SendScheduleEmails'
      @_hash['send_account_emails'] = 'SendAccountEmails'
      @_hash['send_promotional_emails'] = 'SendPromotionalEmails'
      @_hash['send_schedule_texts'] = 'SendScheduleTexts'
      @_hash['send_account_texts'] = 'SendAccountTexts'
      @_hash['send_promotional_texts'] = 'SendPromotionalTexts'
      @_hash['locker_number'] = 'LockerNumber'
      @_hash['reactivate_inactive_client'] = 'ReactivateInactiveClient'
      @_hash['lead_channel_id'] = 'LeadChannelId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_balance
        action
        active
        address_line1
        address_line2
        appt_gender_pref_male
        birth_date
        city
        client_credit_card
        client_indexes
        client_relationships
        country
        creation_date
        custom_client_fields
        email
        emergency_contact_info_email
        emergency_contact_info_name
        emergency_contact_info_phone
        emergency_contact_info_relationship
        first_appointment_date
        gender
        home_location
        home_phone
        is_company
        is_prospect
        last_formula_notes
        last_modified_date_time
        liability
        liability_release
        membership_icon
        middle_name
        mobile_phone
        mobile_provider
        new_id
        notes
        photo_url
        postal_code
        prospect_stage
        red_alert
        referred_by
        sales_reps
        site_id
        state
        status
        test
        unique_id
        work_extension
        work_phone
        yellow_alert
        send_schedule_emails
        send_account_emails
        send_promotional_emails
        send_schedule_texts
        send_account_texts
        send_promotional_texts
        locker_number
        reactivate_inactive_client
        lead_channel_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(first_name = nil, last_name = nil, account_balance = SKIP,
                   action = SKIP, active = SKIP, address_line1 = SKIP,
                   address_line2 = SKIP, appt_gender_pref_male = SKIP,
                   birth_date = SKIP, city = SKIP, client_credit_card = SKIP,
                   client_indexes = SKIP, client_relationships = SKIP,
                   country = SKIP, creation_date = SKIP,
                   custom_client_fields = SKIP, email = SKIP,
                   emergency_contact_info_email = SKIP,
                   emergency_contact_info_name = SKIP,
                   emergency_contact_info_phone = SKIP,
                   emergency_contact_info_relationship = SKIP,
                   first_appointment_date = SKIP, gender = SKIP,
                   home_location = SKIP, home_phone = SKIP, is_company = SKIP,
                   is_prospect = SKIP, last_formula_notes = SKIP,
                   last_modified_date_time = SKIP, liability = SKIP,
                   liability_release = SKIP, membership_icon = SKIP,
                   middle_name = SKIP, mobile_phone = SKIP,
                   mobile_provider = SKIP, new_id = SKIP, notes = SKIP,
                   photo_url = SKIP, postal_code = SKIP, prospect_stage = SKIP,
                   red_alert = SKIP, referred_by = SKIP, sales_reps = SKIP,
                   site_id = SKIP, state = SKIP, status = SKIP, test = SKIP,
                   unique_id = SKIP, work_extension = SKIP, work_phone = SKIP,
                   yellow_alert = SKIP, send_schedule_emails = SKIP,
                   send_account_emails = SKIP, send_promotional_emails = SKIP,
                   send_schedule_texts = SKIP, send_account_texts = SKIP,
                   send_promotional_texts = SKIP, locker_number = SKIP,
                   reactivate_inactive_client = SKIP, lead_channel_id = SKIP)
      @account_balance = account_balance unless account_balance == SKIP
      @action = action unless action == SKIP
      @active = active unless active == SKIP
      @address_line1 = address_line1 unless address_line1 == SKIP
      @address_line2 = address_line2 unless address_line2 == SKIP
      @appt_gender_pref_male = appt_gender_pref_male unless appt_gender_pref_male == SKIP
      @birth_date = birth_date unless birth_date == SKIP
      @city = city unless city == SKIP
      @client_credit_card = client_credit_card unless client_credit_card == SKIP
      @client_indexes = client_indexes unless client_indexes == SKIP
      @client_relationships = client_relationships unless client_relationships == SKIP
      @country = country unless country == SKIP
      @creation_date = creation_date unless creation_date == SKIP
      @custom_client_fields = custom_client_fields unless custom_client_fields == SKIP
      @email = email unless email == SKIP
      unless emergency_contact_info_email == SKIP
        @emergency_contact_info_email =
          emergency_contact_info_email
      end
      unless emergency_contact_info_name == SKIP
        @emergency_contact_info_name =
          emergency_contact_info_name
      end
      unless emergency_contact_info_phone == SKIP
        @emergency_contact_info_phone =
          emergency_contact_info_phone
      end
      unless emergency_contact_info_relationship == SKIP
        @emergency_contact_info_relationship =
          emergency_contact_info_relationship
      end
      @first_appointment_date = first_appointment_date unless first_appointment_date == SKIP
      @first_name = first_name
      @gender = gender unless gender == SKIP
      @home_location = home_location unless home_location == SKIP
      @home_phone = home_phone unless home_phone == SKIP
      @is_company = is_company unless is_company == SKIP
      @is_prospect = is_prospect unless is_prospect == SKIP
      @last_formula_notes = last_formula_notes unless last_formula_notes == SKIP
      @last_modified_date_time = last_modified_date_time unless last_modified_date_time == SKIP
      @last_name = last_name
      @liability = liability unless liability == SKIP
      @liability_release = liability_release unless liability_release == SKIP
      @membership_icon = membership_icon unless membership_icon == SKIP
      @middle_name = middle_name unless middle_name == SKIP
      @mobile_phone = mobile_phone unless mobile_phone == SKIP
      @mobile_provider = mobile_provider unless mobile_provider == SKIP
      @new_id = new_id unless new_id == SKIP
      @notes = notes unless notes == SKIP
      @photo_url = photo_url unless photo_url == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @prospect_stage = prospect_stage unless prospect_stage == SKIP
      @red_alert = red_alert unless red_alert == SKIP
      @referred_by = referred_by unless referred_by == SKIP
      @sales_reps = sales_reps unless sales_reps == SKIP
      @site_id = site_id unless site_id == SKIP
      @state = state unless state == SKIP
      @status = status unless status == SKIP
      @test = test unless test == SKIP
      @unique_id = unique_id unless unique_id == SKIP
      @work_extension = work_extension unless work_extension == SKIP
      @work_phone = work_phone unless work_phone == SKIP
      @yellow_alert = yellow_alert unless yellow_alert == SKIP
      @send_schedule_emails = send_schedule_emails unless send_schedule_emails == SKIP
      @send_account_emails = send_account_emails unless send_account_emails == SKIP
      @send_promotional_emails = send_promotional_emails unless send_promotional_emails == SKIP
      @send_schedule_texts = send_schedule_texts unless send_schedule_texts == SKIP
      @send_account_texts = send_account_texts unless send_account_texts == SKIP
      @send_promotional_texts = send_promotional_texts unless send_promotional_texts == SKIP
      @locker_number = locker_number unless locker_number == SKIP
      unless reactivate_inactive_client == SKIP
        @reactivate_inactive_client =
          reactivate_inactive_client
      end
      @lead_channel_id = lead_channel_id unless lead_channel_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('FirstName') ? hash['FirstName'] : nil
      last_name = hash.key?('LastName') ? hash['LastName'] : nil
      account_balance =
        hash.key?('AccountBalance') ? hash['AccountBalance'] : SKIP
      action = hash.key?('Action') ? hash['Action'] : SKIP
      active = hash.key?('Active') ? hash['Active'] : SKIP
      address_line1 = hash.key?('AddressLine1') ? hash['AddressLine1'] : SKIP
      address_line2 = hash.key?('AddressLine2') ? hash['AddressLine2'] : SKIP
      appt_gender_pref_male =
        hash.key?('ApptGenderPrefMale') ? hash['ApptGenderPrefMale'] : SKIP
      birth_date = if hash.key?('BirthDate')
                     (DateTimeHelper.from_rfc3339(hash['BirthDate']) if hash['BirthDate'])
                   else
                     SKIP
                   end
      city = hash.key?('City') ? hash['City'] : SKIP
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
      email = hash.key?('Email') ? hash['Email'] : SKIP
      emergency_contact_info_email =
        hash.key?('EmergencyContactInfoEmail') ? hash['EmergencyContactInfoEmail'] : SKIP
      emergency_contact_info_name =
        hash.key?('EmergencyContactInfoName') ? hash['EmergencyContactInfoName'] : SKIP
      emergency_contact_info_phone =
        hash.key?('EmergencyContactInfoPhone') ? hash['EmergencyContactInfoPhone'] : SKIP
      emergency_contact_info_relationship =
        hash.key?('EmergencyContactInfoRelationship') ? hash['EmergencyContactInfoRelationship'] : SKIP
      first_appointment_date = if hash.key?('FirstAppointmentDate')
                                 (DateTimeHelper.from_rfc3339(hash['FirstAppointmentDate']) if hash['FirstAppointmentDate'])
                               else
                                 SKIP
                               end
      gender = hash.key?('Gender') ? hash['Gender'] : SKIP
      home_location = Location.from_hash(hash['HomeLocation']) if hash['HomeLocation']
      home_phone = hash.key?('HomePhone') ? hash['HomePhone'] : SKIP
      is_company = hash.key?('IsCompany') ? hash['IsCompany'] : SKIP
      is_prospect = hash.key?('IsProspect') ? hash['IsProspect'] : SKIP
      last_formula_notes =
        hash.key?('LastFormulaNotes') ? hash['LastFormulaNotes'] : SKIP
      last_modified_date_time = if hash.key?('LastModifiedDateTime')
                                  (DateTimeHelper.from_rfc3339(hash['LastModifiedDateTime']) if hash['LastModifiedDateTime'])
                                else
                                  SKIP
                                end
      liability = Liability.from_hash(hash['Liability']) if hash['Liability']
      liability_release =
        hash.key?('LiabilityRelease') ? hash['LiabilityRelease'] : SKIP
      membership_icon =
        hash.key?('MembershipIcon') ? hash['MembershipIcon'] : SKIP
      middle_name = hash.key?('MiddleName') ? hash['MiddleName'] : SKIP
      mobile_phone = hash.key?('MobilePhone') ? hash['MobilePhone'] : SKIP
      mobile_provider =
        hash.key?('MobileProvider') ? hash['MobileProvider'] : SKIP
      new_id = hash.key?('NewId') ? hash['NewId'] : SKIP
      notes = hash.key?('Notes') ? hash['Notes'] : SKIP
      photo_url = hash.key?('PhotoUrl') ? hash['PhotoUrl'] : SKIP
      postal_code = hash.key?('PostalCode') ? hash['PostalCode'] : SKIP
      prospect_stage = ProspectStage.from_hash(hash['ProspectStage']) if hash['ProspectStage']
      red_alert = hash.key?('RedAlert') ? hash['RedAlert'] : SKIP
      referred_by = hash.key?('ReferredBy') ? hash['ReferredBy'] : SKIP
      # Parameter is an array, so we need to iterate through it
      sales_reps = nil
      unless hash['SalesReps'].nil?
        sales_reps = []
        hash['SalesReps'].each do |structure|
          sales_reps << (SalesRep.from_hash(structure) if structure)
        end
      end

      sales_reps = SKIP unless hash.key?('SalesReps')
      site_id = hash.key?('SiteId') ? hash['SiteId'] : SKIP
      state = hash.key?('State') ? hash['State'] : SKIP
      status = hash.key?('Status') ? hash['Status'] : SKIP
      test = hash.key?('Test') ? hash['Test'] : SKIP
      unique_id = hash.key?('UniqueId') ? hash['UniqueId'] : SKIP
      work_extension = hash.key?('WorkExtension') ? hash['WorkExtension'] : SKIP
      work_phone = hash.key?('WorkPhone') ? hash['WorkPhone'] : SKIP
      yellow_alert = hash.key?('YellowAlert') ? hash['YellowAlert'] : SKIP
      send_schedule_emails =
        hash.key?('SendScheduleEmails') ? hash['SendScheduleEmails'] : SKIP
      send_account_emails =
        hash.key?('SendAccountEmails') ? hash['SendAccountEmails'] : SKIP
      send_promotional_emails =
        hash.key?('SendPromotionalEmails') ? hash['SendPromotionalEmails'] : SKIP
      send_schedule_texts =
        hash.key?('SendScheduleTexts') ? hash['SendScheduleTexts'] : SKIP
      send_account_texts =
        hash.key?('SendAccountTexts') ? hash['SendAccountTexts'] : SKIP
      send_promotional_texts =
        hash.key?('SendPromotionalTexts') ? hash['SendPromotionalTexts'] : SKIP
      locker_number = hash.key?('LockerNumber') ? hash['LockerNumber'] : SKIP
      reactivate_inactive_client =
        hash.key?('ReactivateInactiveClient') ? hash['ReactivateInactiveClient'] : SKIP
      lead_channel_id =
        hash.key?('LeadChannelId') ? hash['LeadChannelId'] : SKIP

      # Create object from extracted values.
      AddClientRequest.new(first_name,
                           last_name,
                           account_balance,
                           action,
                           active,
                           address_line1,
                           address_line2,
                           appt_gender_pref_male,
                           birth_date,
                           city,
                           client_credit_card,
                           client_indexes,
                           client_relationships,
                           country,
                           creation_date,
                           custom_client_fields,
                           email,
                           emergency_contact_info_email,
                           emergency_contact_info_name,
                           emergency_contact_info_phone,
                           emergency_contact_info_relationship,
                           first_appointment_date,
                           gender,
                           home_location,
                           home_phone,
                           is_company,
                           is_prospect,
                           last_formula_notes,
                           last_modified_date_time,
                           liability,
                           liability_release,
                           membership_icon,
                           middle_name,
                           mobile_phone,
                           mobile_provider,
                           new_id,
                           notes,
                           photo_url,
                           postal_code,
                           prospect_stage,
                           red_alert,
                           referred_by,
                           sales_reps,
                           site_id,
                           state,
                           status,
                           test,
                           unique_id,
                           work_extension,
                           work_phone,
                           yellow_alert,
                           send_schedule_emails,
                           send_account_emails,
                           send_promotional_emails,
                           send_schedule_texts,
                           send_account_texts,
                           send_promotional_texts,
                           locker_number,
                           reactivate_inactive_client,
                           lead_channel_id)
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

    def to_custom_last_modified_date_time
      DateTimeHelper.to_rfc3339(last_modified_date_time)
    end
  end
end
