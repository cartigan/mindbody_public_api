# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # Staff1 Model.
  class Staff1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID assigned to the staff member.
    # @return [Integer]
    attr_accessor :id

    # The staff member’s first name.
    # @return [String]
    attr_accessor :first_name

    # The staff member’s last name.
    # @return [String]
    attr_accessor :last_name

    # The display name of the staff member.
    # @return [String]
    attr_accessor :display_name

    # The staff member’s email address.
    # @return [String]
    attr_accessor :email

    # The staff member’s biography. This string contains HTML.
    # @return [String]
    attr_accessor :bio

    # The address of the staff member who is teaching the class.
    # @return [String]
    attr_accessor :address

    # The address2 of the staff member who is teaching the class.
    # @return [String]
    attr_accessor :address2

    # The staff member’s city.
    # @return [String]
    attr_accessor :city

    # The staff member’s state.
    # @return [String]
    attr_accessor :state

    # The staff member’s postal code.
    # @return [String]
    attr_accessor :postal_code

    # The staff member’s Foreign Zip code.
    # @return [String]
    attr_accessor :foreign_zip

    # The staff member’s country.
    # @return [String]
    attr_accessor :country

    # The staff member’s work phone number.
    # @return [String]
    attr_accessor :work_phone

    # The staff member’s home phone number.
    # @return [String]
    attr_accessor :home_phone

    # The staff member’s mobile phone number.
    # @return [String]
    attr_accessor :cell_phone

    # When `true`, indicates that the staff member is Active.
    # When `false`, indicates that the staff member is not Active.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # When `true`, indicates that the staff member is a system .
    # When `false`, indicates that the staff member is not system.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_system

    # The Staff's Smode Id
    # @return [Integer]
    attr_accessor :smode_id

    # When `true`, indicates that the staff member offers appointments.
    # When `false`, indicates that the staff member does not offer appointments.
    # @return [TrueClass | FalseClass]
    attr_accessor :appointment_trn

    # When `true`, indicates that the staff member can be scheduled for
    # overlapping services.
    # When `false`, indicates that the staff can only be scheduled for one
    # service at a time in any given time-frame.
    # @return [TrueClass | FalseClass]
    attr_accessor :always_allow_double_booking

    # When `true`, indicates that the staff member is an independent contractor.
    # When `false`, indicates that the staff member is not an independent
    # contractor.
    # @return [TrueClass | FalseClass]
    attr_accessor :independent_contractor

    # The URL of the staff member’s image, if one has been uploaded.
    # @return [String]
    attr_accessor :image_url

    # When `true`, indicates that the staff member is male.
    # When `false`, indicates that the staff member is female.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_male

    # When `true`, indicates that the staff member offers Reservation.
    # When `false`, indicates that the staff member does not offer Reservation.
    # @return [TrueClass | FalseClass]
    attr_accessor :reservation_trn

    # If configured by the business owner, this field determines a staff
    # member’s weight when sorting. Use this field to sort staff members on your
    # interface.
    # @return [Integer]
    attr_accessor :sort_order

    # When `true`, indicates that the staff member has Multi Location
    # Permission.
    # When `false`, indicates that the staff member does not has Multi Location
    # Permission.
    # @return [TrueClass | FalseClass]
    attr_accessor :multi_location_permission

    # The staff member’s name.
    # @return [String]
    attr_accessor :name

    # A list of ProviderIds for the staff.
    # @return [Array[String]]
    attr_accessor :provider_i_ds

    # contains the information about the staff settings.
    # @return [StaffSetting]
    attr_accessor :staff_settings

    # When `true`, indicates that the staff is sales Rep 1 else `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :rep

    # When `true`, indicates that the staff is sales Rep 2 else `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :rep2

    # When `true`, indicates that the staff is sales Rep 3 else `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :rep3

    # When `true`, indicates that the staff is sales Rep 4 else `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :rep4

    # When `true`, indicates that the staff is sales Rep 5 else `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :rep5

    # When `true`, indicates that the staff is sales Rep 6 else `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :rep6

    # When `true`, indicates that the staff is assistant.
    # When `false`, indicates that the staff is not assistant.
    # @return [TrueClass | FalseClass]
    attr_accessor :assistant

    # When `true`, indicates that the staff is assistant2.
    # When `false`, indicates that the staff is not assistant2.
    # @return [TrueClass | FalseClass]
    attr_accessor :assistant2

    # The start date of employment.
    # @return [DateTime]
    attr_accessor :employment_start

    # The end date of employment.
    # @return [DateTime]
    attr_accessor :employment_end

    # The custom staff ID assigned to the staff member.
    # @return [String]
    attr_accessor :emp_id

    # A list of appointments for the staff.
    # @return [Array[Appointment1]]
    attr_accessor :appointments

    # A list of unavailabilities for the staff.
    # @return [Array[Unavailability1]]
    attr_accessor :unavailabilities

    # A list of availabilities for the staff.
    # @return [Array[Availability1]]
    attr_accessor :availabilities

    # A list of LoginLocations for the staff
    # @return [Array[Location1]]
    attr_accessor :login_locations

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['first_name'] = 'FirstName'
      @_hash['last_name'] = 'LastName'
      @_hash['display_name'] = 'DisplayName'
      @_hash['email'] = 'Email'
      @_hash['bio'] = 'Bio'
      @_hash['address'] = 'Address'
      @_hash['address2'] = 'Address2'
      @_hash['city'] = 'City'
      @_hash['state'] = 'State'
      @_hash['postal_code'] = 'PostalCode'
      @_hash['foreign_zip'] = 'ForeignZip'
      @_hash['country'] = 'Country'
      @_hash['work_phone'] = 'WorkPhone'
      @_hash['home_phone'] = 'HomePhone'
      @_hash['cell_phone'] = 'CellPhone'
      @_hash['active'] = 'Active'
      @_hash['is_system'] = 'IsSystem'
      @_hash['smode_id'] = 'SmodeId'
      @_hash['appointment_trn'] = 'AppointmentTrn'
      @_hash['always_allow_double_booking'] = 'AlwaysAllowDoubleBooking'
      @_hash['independent_contractor'] = 'IndependentContractor'
      @_hash['image_url'] = 'ImageUrl'
      @_hash['is_male'] = 'IsMale'
      @_hash['reservation_trn'] = 'ReservationTrn'
      @_hash['sort_order'] = 'SortOrder'
      @_hash['multi_location_permission'] = 'MultiLocationPermission'
      @_hash['name'] = 'Name'
      @_hash['provider_i_ds'] = 'ProviderIDs'
      @_hash['staff_settings'] = 'StaffSettings'
      @_hash['rep'] = 'Rep'
      @_hash['rep2'] = 'Rep2'
      @_hash['rep3'] = 'Rep3'
      @_hash['rep4'] = 'Rep4'
      @_hash['rep5'] = 'Rep5'
      @_hash['rep6'] = 'Rep6'
      @_hash['assistant'] = 'Assistant'
      @_hash['assistant2'] = 'Assistant2'
      @_hash['employment_start'] = 'EmploymentStart'
      @_hash['employment_end'] = 'EmploymentEnd'
      @_hash['emp_id'] = 'EmpID'
      @_hash['appointments'] = 'Appointments'
      @_hash['unavailabilities'] = 'Unavailabilities'
      @_hash['availabilities'] = 'Availabilities'
      @_hash['login_locations'] = 'LoginLocations'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        first_name
        last_name
        display_name
        email
        bio
        address
        address2
        city
        state
        postal_code
        foreign_zip
        country
        work_phone
        home_phone
        cell_phone
        active
        is_system
        smode_id
        appointment_trn
        always_allow_double_booking
        independent_contractor
        image_url
        is_male
        reservation_trn
        sort_order
        multi_location_permission
        name
        provider_i_ds
        staff_settings
        rep
        rep2
        rep3
        rep4
        rep5
        rep6
        assistant
        assistant2
        employment_start
        employment_end
        emp_id
        appointments
        unavailabilities
        availabilities
        login_locations
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, first_name = SKIP, last_name = SKIP,
                   display_name = SKIP, email = SKIP, bio = SKIP,
                   address = SKIP, address2 = SKIP, city = SKIP, state = SKIP,
                   postal_code = SKIP, foreign_zip = SKIP, country = SKIP,
                   work_phone = SKIP, home_phone = SKIP, cell_phone = SKIP,
                   active = SKIP, is_system = SKIP, smode_id = SKIP,
                   appointment_trn = SKIP, always_allow_double_booking = SKIP,
                   independent_contractor = SKIP, image_url = SKIP,
                   is_male = SKIP, reservation_trn = SKIP, sort_order = SKIP,
                   multi_location_permission = SKIP, name = SKIP,
                   provider_i_ds = SKIP, staff_settings = SKIP, rep = SKIP,
                   rep2 = SKIP, rep3 = SKIP, rep4 = SKIP, rep5 = SKIP,
                   rep6 = SKIP, assistant = SKIP, assistant2 = SKIP,
                   employment_start = SKIP, employment_end = SKIP,
                   emp_id = SKIP, appointments = SKIP, unavailabilities = SKIP,
                   availabilities = SKIP, login_locations = SKIP)
      @id = id unless id == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @display_name = display_name unless display_name == SKIP
      @email = email unless email == SKIP
      @bio = bio unless bio == SKIP
      @address = address unless address == SKIP
      @address2 = address2 unless address2 == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @foreign_zip = foreign_zip unless foreign_zip == SKIP
      @country = country unless country == SKIP
      @work_phone = work_phone unless work_phone == SKIP
      @home_phone = home_phone unless home_phone == SKIP
      @cell_phone = cell_phone unless cell_phone == SKIP
      @active = active unless active == SKIP
      @is_system = is_system unless is_system == SKIP
      @smode_id = smode_id unless smode_id == SKIP
      @appointment_trn = appointment_trn unless appointment_trn == SKIP
      unless always_allow_double_booking == SKIP
        @always_allow_double_booking =
          always_allow_double_booking
      end
      @independent_contractor = independent_contractor unless independent_contractor == SKIP
      @image_url = image_url unless image_url == SKIP
      @is_male = is_male unless is_male == SKIP
      @reservation_trn = reservation_trn unless reservation_trn == SKIP
      @sort_order = sort_order unless sort_order == SKIP
      unless multi_location_permission == SKIP
        @multi_location_permission =
          multi_location_permission
      end
      @name = name unless name == SKIP
      @provider_i_ds = provider_i_ds unless provider_i_ds == SKIP
      @staff_settings = staff_settings unless staff_settings == SKIP
      @rep = rep unless rep == SKIP
      @rep2 = rep2 unless rep2 == SKIP
      @rep3 = rep3 unless rep3 == SKIP
      @rep4 = rep4 unless rep4 == SKIP
      @rep5 = rep5 unless rep5 == SKIP
      @rep6 = rep6 unless rep6 == SKIP
      @assistant = assistant unless assistant == SKIP
      @assistant2 = assistant2 unless assistant2 == SKIP
      @employment_start = employment_start unless employment_start == SKIP
      @employment_end = employment_end unless employment_end == SKIP
      @emp_id = emp_id unless emp_id == SKIP
      @appointments = appointments unless appointments == SKIP
      @unavailabilities = unavailabilities unless unavailabilities == SKIP
      @availabilities = availabilities unless availabilities == SKIP
      @login_locations = login_locations unless login_locations == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      first_name = hash.key?('FirstName') ? hash['FirstName'] : SKIP
      last_name = hash.key?('LastName') ? hash['LastName'] : SKIP
      display_name = hash.key?('DisplayName') ? hash['DisplayName'] : SKIP
      email = hash.key?('Email') ? hash['Email'] : SKIP
      bio = hash.key?('Bio') ? hash['Bio'] : SKIP
      address = hash.key?('Address') ? hash['Address'] : SKIP
      address2 = hash.key?('Address2') ? hash['Address2'] : SKIP
      city = hash.key?('City') ? hash['City'] : SKIP
      state = hash.key?('State') ? hash['State'] : SKIP
      postal_code = hash.key?('PostalCode') ? hash['PostalCode'] : SKIP
      foreign_zip = hash.key?('ForeignZip') ? hash['ForeignZip'] : SKIP
      country = hash.key?('Country') ? hash['Country'] : SKIP
      work_phone = hash.key?('WorkPhone') ? hash['WorkPhone'] : SKIP
      home_phone = hash.key?('HomePhone') ? hash['HomePhone'] : SKIP
      cell_phone = hash.key?('CellPhone') ? hash['CellPhone'] : SKIP
      active = hash.key?('Active') ? hash['Active'] : SKIP
      is_system = hash.key?('IsSystem') ? hash['IsSystem'] : SKIP
      smode_id = hash.key?('SmodeId') ? hash['SmodeId'] : SKIP
      appointment_trn =
        hash.key?('AppointmentTrn') ? hash['AppointmentTrn'] : SKIP
      always_allow_double_booking =
        hash.key?('AlwaysAllowDoubleBooking') ? hash['AlwaysAllowDoubleBooking'] : SKIP
      independent_contractor =
        hash.key?('IndependentContractor') ? hash['IndependentContractor'] : SKIP
      image_url = hash.key?('ImageUrl') ? hash['ImageUrl'] : SKIP
      is_male = hash.key?('IsMale') ? hash['IsMale'] : SKIP
      reservation_trn =
        hash.key?('ReservationTrn') ? hash['ReservationTrn'] : SKIP
      sort_order = hash.key?('SortOrder') ? hash['SortOrder'] : SKIP
      multi_location_permission =
        hash.key?('MultiLocationPermission') ? hash['MultiLocationPermission'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP
      provider_i_ds = hash.key?('ProviderIDs') ? hash['ProviderIDs'] : SKIP
      staff_settings = StaffSetting.from_hash(hash['StaffSettings']) if hash['StaffSettings']
      rep = hash.key?('Rep') ? hash['Rep'] : SKIP
      rep2 = hash.key?('Rep2') ? hash['Rep2'] : SKIP
      rep3 = hash.key?('Rep3') ? hash['Rep3'] : SKIP
      rep4 = hash.key?('Rep4') ? hash['Rep4'] : SKIP
      rep5 = hash.key?('Rep5') ? hash['Rep5'] : SKIP
      rep6 = hash.key?('Rep6') ? hash['Rep6'] : SKIP
      assistant = hash.key?('Assistant') ? hash['Assistant'] : SKIP
      assistant2 = hash.key?('Assistant2') ? hash['Assistant2'] : SKIP
      employment_start = if hash.key?('EmploymentStart')
                           (DateTimeHelper.from_rfc3339(hash['EmploymentStart']) if hash['EmploymentStart'])
                         else
                           SKIP
                         end
      employment_end = if hash.key?('EmploymentEnd')
                         (DateTimeHelper.from_rfc3339(hash['EmploymentEnd']) if hash['EmploymentEnd'])
                       else
                         SKIP
                       end
      emp_id = hash.key?('EmpID') ? hash['EmpID'] : SKIP
      # Parameter is an array, so we need to iterate through it
      appointments = nil
      unless hash['Appointments'].nil?
        appointments = []
        hash['Appointments'].each do |structure|
          appointments << (Appointment1.from_hash(structure) if structure)
        end
      end

      appointments = SKIP unless hash.key?('Appointments')
      # Parameter is an array, so we need to iterate through it
      unavailabilities = nil
      unless hash['Unavailabilities'].nil?
        unavailabilities = []
        hash['Unavailabilities'].each do |structure|
          unavailabilities << (Unavailability1.from_hash(structure) if structure)
        end
      end

      unavailabilities = SKIP unless hash.key?('Unavailabilities')
      # Parameter is an array, so we need to iterate through it
      availabilities = nil
      unless hash['Availabilities'].nil?
        availabilities = []
        hash['Availabilities'].each do |structure|
          availabilities << (Availability1.from_hash(structure) if structure)
        end
      end

      availabilities = SKIP unless hash.key?('Availabilities')
      # Parameter is an array, so we need to iterate through it
      login_locations = nil
      unless hash['LoginLocations'].nil?
        login_locations = []
        hash['LoginLocations'].each do |structure|
          login_locations << (Location1.from_hash(structure) if structure)
        end
      end

      login_locations = SKIP unless hash.key?('LoginLocations')

      # Create object from extracted values.
      Staff1.new(id,
                 first_name,
                 last_name,
                 display_name,
                 email,
                 bio,
                 address,
                 address2,
                 city,
                 state,
                 postal_code,
                 foreign_zip,
                 country,
                 work_phone,
                 home_phone,
                 cell_phone,
                 active,
                 is_system,
                 smode_id,
                 appointment_trn,
                 always_allow_double_booking,
                 independent_contractor,
                 image_url,
                 is_male,
                 reservation_trn,
                 sort_order,
                 multi_location_permission,
                 name,
                 provider_i_ds,
                 staff_settings,
                 rep,
                 rep2,
                 rep3,
                 rep4,
                 rep5,
                 rep6,
                 assistant,
                 assistant2,
                 employment_start,
                 employment_end,
                 emp_id,
                 appointments,
                 unavailabilities,
                 availabilities,
                 login_locations)
    end

    def to_custom_employment_start
      DateTimeHelper.to_rfc3339(employment_start)
    end

    def to_custom_employment_end
      DateTimeHelper.to_rfc3339(employment_end)
    end
  end
end
