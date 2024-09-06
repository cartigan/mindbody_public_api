# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # AppointmentController
  class AppointmentController < BaseController
    # This is not appointment availability but rather the active business hours
    # for studios and which increments services can be booked at. See
    # BookableItems for appointment availability.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [DateTime] request_end_time Optional parameter: Filters results to
    # times that end on or before this time on the current date. Any date
    # provided is ignored..  <br />Default: **23:59:59**
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [RequestScheduleTypeEnum] request_schedule_type Optional parameter:
    # Filters on the provided the schedule type. Either `SessionTypeIds` or
    # `ScheduleType` must be provided.
    # @param [Array[Integer]] request_session_type_ids Optional parameter:
    # Filters on the provided session type IDs. Either `SessionTypeIds` or
    # `ScheduleType` must be provided.
    # @param [DateTime] request_start_time Optional parameter: Filters results
    # to times that start on or after this time on the current date. Any date
    # provided is ignored.  <br />Default: **00:00:00**
    # @return [GetActiveSessionTimesResponse] response from the API call
    def get_active_session_times(version,
                                 site_id,
                                 authorization: nil,
                                 request_end_time: nil,
                                 request_limit: nil,
                                 request_offset: nil,
                                 request_schedule_type: nil,
                                 request_session_type_ids: nil,
                                 request_start_time: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/activesessiontimes',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_end_time, key: 'request.endTime'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_schedule_type, key: 'request.scheduleType'))
                   .query_param(new_parameter(request_session_type_ids, key: 'request.sessionTypeIds'))
                   .query_param(new_parameter(request_start_time, key: 'request.startTime'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetActiveSessionTimesResponse.method(:from_hash)))
        .execute
    end

    # Get active appointment add-ons.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Integer] request_staff_id Optional parameter: Filter to add-ons
    # only performed by this staff member.
    # @return [GetAddOnsResponse] response from the API call
    def get_add_ons(version,
                    site_id,
                    authorization: nil,
                    request_limit: nil,
                    request_offset: nil,
                    request_staff_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/addons',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_staff_id, key: 'request.staffId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAddOnsResponse.method(:from_hash)))
        .execute
    end

    # This endpoint has no query parameters.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [GetAppointmentOptionsResponse] response from the API call
    def get_appointment_options(version,
                                site_id,
                                authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/appointmentoptions',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAppointmentOptionsResponse.method(:from_hash)))
        .execute
    end

    # Returns a list of dates to narrow down staff availability when booking.
    # Dates are those which staff are scheduled to work and do not guarantee
    # booking availabilities. After this call is made, use GET BookableItems to
    # retrieve availabilities for specific dates before booking.
    # @param [String] version Required parameter: version of the api.
    # @param [Integer] request_session_type_id Required parameter: required
    # requested session type ID.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [DateTime] request_end_date Optional parameter: The end date of the
    # requested date range.   <br />Default: **StartDate**
    # @param [Integer] request_location_id Optional parameter: optional
    # requested location ID.
    # @param [Integer] request_staff_id Optional parameter: optional requested
    # staff ID.
    # @param [DateTime] request_start_date Optional parameter: The start date of
    # the requested date range. If omitted, the default is used.  <br />Default:
    # **today’s date**
    # @return [GetAvailableDatesResponse] response from the API call
    def get_available_dates(version,
                            request_session_type_id,
                            site_id,
                            authorization: nil,
                            request_end_date: nil,
                            request_location_id: nil,
                            request_staff_id: nil,
                            request_start_date: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/availabledates',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .query_param(new_parameter(request_session_type_id, key: 'request.sessionTypeId'))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_end_date, key: 'request.endDate'))
                   .query_param(new_parameter(request_location_id, key: 'request.locationId'))
                   .query_param(new_parameter(request_staff_id, key: 'request.staffId'))
                   .query_param(new_parameter(request_start_date, key: 'request.startDate'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetAvailableDatesResponse.method(:from_hash)))
        .execute
    end

    # Returns a list of availabilities with the information needed to book
    # appointments. Availabilities include information such as the location and
    # its amenities, staff members, programs, and session types. Recommended to
    # use with GET AvailableDates to see what dates the staff is scheduled to
    # work and narrow down the dates searched. Recommended to use with GET
    # ActiveSessionTimes to see which increments each business allows for
    # booking appointments.
    # Notes:
    # - With a wider range of dates, this call may take longer to return
    # results.
    # - With a higher number of request.sessionTypeIds, this call may take
    # longer to return results.
    # @param [String] version Required parameter: version of the api.
    # @param [Array[Integer]] request_session_type_ids Required parameter: A
    # list of the requested session type IDs.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Integer] request_appointment_id Optional parameter: If provided,
    # filters out the appointment with this ID.
    # @param [DateTime] request_end_date Optional parameter: The end date of the
    # requested date range.   <br />Default: **StartDate**
    # @param [TrueClass | FalseClass] request_ignore_default_session_length
    # Optional parameter: When `true`, availabilities that are non-default
    # return, for example, a 30-minute availability with a 60-minute default
    # session length.<br />  When `false`, only availabilities that have the
    # default session length return.
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Array[Integer]] request_location_ids Optional parameter: A list of
    # the requested location IDs.
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Array[Integer]] request_staff_ids Optional parameter: A list of
    # the requested staff IDs. Omit parameter to return all staff
    # availabilities.
    # @param [DateTime] request_start_date Optional parameter: The start date of
    # the requested date range.   <br />Default: **today’s date**
    # @return [GetBookableItemsResponse] response from the API call
    def get_bookable_items(version,
                           request_session_type_ids,
                           site_id,
                           authorization: nil,
                           request_appointment_id: nil,
                           request_end_date: nil,
                           request_ignore_default_session_length: nil,
                           request_limit: nil,
                           request_location_ids: nil,
                           request_offset: nil,
                           request_staff_ids: nil,
                           request_start_date: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/bookableitems',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .query_param(new_parameter(request_session_type_ids, key: 'request.sessionTypeIds'))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_appointment_id, key: 'request.appointmentId'))
                   .query_param(new_parameter(request_end_date, key: 'request.endDate'))
                   .query_param(new_parameter(request_ignore_default_session_length, key: 'request.ignoreDefaultSessionLength'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_location_ids, key: 'request.locationIds'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_staff_ids, key: 'request.staffIds'))
                   .query_param(new_parameter(request_start_date, key: 'request.startDate'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetBookableItemsResponse.method(:from_hash)))
        .execute
    end

    # Returns a list of schedule items, including appointments, availabilities,
    # and unavailabilities. Unavailabilities are the times at which appointments
    # cannot be booked, for example, on holidays or after hours when the
    # business is closed.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [DateTime] request_end_date Optional parameter: The end date of the
    # requested date range.   <br />Default: **today’s date**
    # @param [TrueClass | FalseClass] request_ignore_prep_finish_times Optional
    # parameter: When `true`, appointment preparation and finish
    # unavailabilities are not returned.   <br />Default: **false**
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Array[Integer]] request_location_ids Optional parameter: A list of
    # requested location IDs.
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Array[Integer]] request_staff_ids Optional parameter: A list of
    # requested staff IDs.
    # @param [DateTime] request_start_date Optional parameter: The start date of
    # the requested date range.   <br />Default: **today’s date**
    # @return [GetScheduleItemsResponse] response from the API call
    def get_schedule_items(version,
                           site_id,
                           authorization: nil,
                           request_end_date: nil,
                           request_ignore_prep_finish_times: nil,
                           request_limit: nil,
                           request_location_ids: nil,
                           request_offset: nil,
                           request_staff_ids: nil,
                           request_start_date: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/scheduleitems',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_end_date, key: 'request.endDate'))
                   .query_param(new_parameter(request_ignore_prep_finish_times, key: 'request.ignorePrepFinishTimes'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_location_ids, key: 'request.locationIds'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_staff_ids, key: 'request.staffIds'))
                   .query_param(new_parameter(request_start_date, key: 'request.startDate'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetScheduleItemsResponse.method(:from_hash)))
        .execute
    end

    # Returns a list of appointments by staff member.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Array[Integer]] request_appointment_ids Optional parameter: A list
    # of the requested appointment IDs.
    # @param [String] request_client_id Optional parameter: The client ID to be
    # returned.
    # @param [DateTime] request_end_date Optional parameter: The end date of the
    # requested date range.   <br />Default: **StartDate**
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Array[Integer]] request_location_ids Optional parameter: A list of
    # the requested location IDs.
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Array[Integer]] request_staff_ids Optional parameter: List of
    # staff IDs to be returned. Omit parameter to return staff appointments for
    # all staff.
    # @param [DateTime] request_start_date Optional parameter: The start date of
    # the requested date range. If omitted, the default is used.   <br
    # />Default: **today’s date**
    # @return [GetStaffAppointmentsResponse] response from the API call
    def get_staff_appointments(version,
                               site_id,
                               authorization: nil,
                               request_appointment_ids: nil,
                               request_client_id: nil,
                               request_end_date: nil,
                               request_limit: nil,
                               request_location_ids: nil,
                               request_offset: nil,
                               request_staff_ids: nil,
                               request_start_date: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/staffappointments',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_appointment_ids, key: 'request.appointmentIds'))
                   .query_param(new_parameter(request_client_id, key: 'request.clientId'))
                   .query_param(new_parameter(request_end_date, key: 'request.endDate'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_location_ids, key: 'request.locationIds'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_staff_ids, key: 'request.staffIds'))
                   .query_param(new_parameter(request_start_date, key: 'request.startDate'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetStaffAppointmentsResponse.method(:from_hash)))
        .execute
    end

    # Returns a list of unavailabilities. Unavailabilities are the times at
    # which appointments cannot be booked, for example, on holidays or after
    # hours when the business is closed.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [DateTime] request_end_date Optional parameter: The end date of the
    # requested date range.   <br />Default: **today’s date**
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Array[Integer]] request_staff_ids Optional parameter: A list of
    # requested staff IDs.
    # @param [DateTime] request_start_date Optional parameter: The start date of
    # the requested date range.   <br />Default: **today’s date**
    # @return [GetUnavailabilitiesResponse] response from the API call
    def get_unavailabilities(version,
                             site_id,
                             authorization: nil,
                             request_end_date: nil,
                             request_limit: nil,
                             request_offset: nil,
                             request_staff_ids: nil,
                             request_start_date: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/appointment/unavailabilities',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_end_date, key: 'request.endDate'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_staff_ids, key: 'request.staffIds'))
                   .query_param(new_parameter(request_start_date, key: 'request.startDate'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetUnavailabilitiesResponse.method(:from_hash)))
        .execute
    end

    # A user token is required for this endpoint. To book an appointment, you
    # must use a location ID, staff ID, client ID, session type ID, and the
    # StartDateTime of the appointment. You can get most of this information
    # using GET BookableItems.
    # @param [String] version Required parameter: version of the api.
    # @param [AddAppointmentRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [AddAppointmentResponse] response from the API call
    def add_appointment(version,
                        request,
                        site_id,
                        authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/appointment/addappointment',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AddAppointmentResponse.method(:from_hash)))
        .execute
    end

    # This endpoint books an add-on on top of an existing, regular appointment.
    # To book an add-on, you must use an existing appointment ID and session
    # type ID. You can get a session type ID using `GET AppointmentAddOns`.
    # @param [String] version Required parameter: version of the api.
    # @param [AddAppointmentAddOnRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [AddAppointmentAddOnResponse] response from the API call
    def add_appointment_add_on(version,
                               request,
                               site_id,
                               authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/appointment/addappointmentaddon',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AddAppointmentAddOnResponse.method(:from_hash)))
        .execute
    end

    # To update the information for a specific availability or unavailability of
    # the staff.<br />
    # Note: You must have a staff user token with the required permissions.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [UpdateAvailabilityRequest] update_availability_request Required
    # parameter: Example:
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [UpdateAvailabilityResponse] response from the API call
    def update_availability(version,
                            site_id,
                            update_availability_request,
                            authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/public/v{version}/appointment/availabilities',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .body_param(new_parameter(update_availability_request))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UpdateAvailabilityResponse.method(:from_hash)))
        .execute
    end

    # Add availabilities and unavailabilities for a staff member.<br />
    # Note: You must have a staff user token with the required permissions.
    # @param [String] version Required parameter: version of the api.
    # @param [AddAvailabilitiesRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [AddAvailabilitiesResponse] response from the API call
    def add_availabilities(version,
                           request,
                           site_id,
                           authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/appointment/availabilities',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AddAvailabilitiesResponse.method(:from_hash)))
        .execute
    end

    # To update the information for a specific appointment, you must have a
    # staff user token with the proper permissions. Note that you can only
    # update the appointment’s `StartDateTime`, `EndDateTime`, `StaffId`,
    # `Notes`, and `SessionTypeId`.
    # @param [String] version Required parameter: version of the api.
    # @param [UpdateAppointmentRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [UpdateAppointmentResponse] response from the API call
    def update_appointment(version,
                           request,
                           site_id,
                           authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/appointment/updateappointment',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UpdateAppointmentResponse.method(:from_hash)))
        .execute
    end

    # Remove an appointment from waitlist
    # @param [String] version Required parameter: version of the api.
    # @param [Array[Integer]] request_waitlist_entry_ids Required parameter: A
    # list of `WaitlistEntryIds` to remove from the waiting list.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [void] response from the API call
    def remove_from_waitlist(version,
                             request_waitlist_entry_ids,
                             site_id,
                             authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/public/v{version}/appointment/appointmentfromwaitlist',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .query_param(new_parameter(request_waitlist_entry_ids, key: 'request.waitlistEntryIds'))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # This endpoint deletes the availability or unavailability.
    # Note: You must have a staff user token with the required permissions.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Integer] delete_availability_request_availability_id Optional
    # parameter: The ID of the availability or unavailability.
    # @param [TrueClass | FalseClass] delete_availability_request_test Optional
    # parameter: When `true`, indicates that this is a test request and no data
    # is deleted from the subscriber’s database.  When `false`, the record will
    # be deleted.  Default: **false**
    # @return [void] response from the API call
    def delete_availability(version,
                            site_id,
                            authorization: nil,
                            delete_availability_request_availability_id: nil,
                            delete_availability_request_test: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/public/v{version}/appointment/availability',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(delete_availability_request_availability_id, key: 'deleteAvailabilityRequest.availabilityId'))
                   .query_param(new_parameter(delete_availability_request_test, key: 'deleteAvailabilityRequest.test'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # This endpoint can be used to early-cancel a booked appointment add-on.
    # @param [String] version Required parameter: version of the api.
    # @param [Integer] id Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [void] response from the API call
    def delete_appointment_add_on(version,
                                  id,
                                  site_id,
                                  authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/public/v{version}/appointment/deleteappointmentaddon',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .query_param(new_parameter(id, key: 'id'))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end
  end
end
