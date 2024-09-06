# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # StaffController
  class StaffController < BaseController
    # This endpoint can be utilized to retrieve image urls for requested staff
    # member.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Integer] request_staff_id Optional parameter: The ID of the staff
    # member whose image URL details you want to retrieve.
    # @return [GetStaffImageURLResponse] response from the API call
    def get_staff_image_url(version,
                            site_id,
                            authorization: nil,
                            request_staff_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/staff/imageurl',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_staff_id, key: 'request.staffId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetStaffImageURLResponse.method(:from_hash)))
        .execute
    end

    # This endpoint returns the basic details of the staffs that are marked as
    # sales reps.
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [TrueClass | FalseClass] request_active_only Optional parameter:
    # When `true`, will return only active reps data.  Default : **false**
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Array[Integer]] request_sales_rep_numbers Optional parameter: This
    # is the list of the sales rep numbers for which the salesrep data will be
    # fetched.
    # @return [GetSalesRepsResponse] response from the API call
    def get_sales_reps(version,
                       site_id,
                       authorization: nil,
                       request_active_only: nil,
                       request_limit: nil,
                       request_offset: nil,
                       request_sales_rep_numbers: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/staff/salesreps',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_active_only, key: 'request.activeOnly'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_sales_rep_numbers, key: 'request.salesRepNumbers'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetSalesRepsResponse.method(:from_hash)))
        .execute
    end

    # Gets a list of active session types for a specific staff member. A staff
    # user token must be included with staff assigned the ManageStaffPayRates
    # permission.
    # @param [String] version Required parameter: version of the api.
    # @param [Integer] request_staff_id Required parameter: The ID of the staff
    # member whose session types you want to return.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [TrueClass | FalseClass] request_online_only Optional parameter:
    # When `true`, indicates that only the session types that can be booked
    # online should be returned.  Default: **false**
    # @param [Array[Integer]] request_program_ids Optional parameter: Filters
    # results to session types that belong to one of the given program IDs. If
    # omitted, all program IDs return.
    # @return [GetStaffSessionTypesResponse] response from the API call
    def get_staff_session_types(version,
                                request_staff_id,
                                site_id,
                                authorization: nil,
                                request_limit: nil,
                                request_offset: nil,
                                request_online_only: nil,
                                request_program_ids: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/staff/sessiontypes',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .query_param(new_parameter(request_staff_id, key: 'request.staffId'))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_online_only, key: 'request.onlineOnly'))
                   .query_param(new_parameter(request_program_ids, key: 'request.programIds'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetStaffSessionTypesResponse.method(:from_hash)))
        .execute
    end

    # When a user token is not passed with the request or the passed user token
    # has insufficient viewing permissions, only the following staff data is
    # returned in the response:
    # 
    # * FirstName
    # * LastName
    # * Id
    # * Bio
    # * DisplayName
    # * ImageUrl
    # * EmpID
    # @param [String] version Required parameter: version of the api.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @param [Array[String]] request_filters Optional parameter: Filters to
    # apply to the search. Possible values are:  * StaffViewable  *
    # AppointmentInstructor  * ClassInstructor  * Male  * Female
    # @param [Integer] request_limit Optional parameter: Number of results to
    # include, defaults to 100
    # @param [Integer] request_location_id Optional parameter: Return only staff
    # members that are available at the specified location. You must supply a
    # valid `SessionTypeID` and `StartDateTime` to use this parameter.
    # @param [Integer] request_offset Optional parameter: Page offset, defaults
    # to 0.
    # @param [Integer] request_session_type_id Optional parameter: Return only
    # staff members that are available for the specified session type. You must
    # supply a valid `StartDateTime` and `LocationID` to use this parameter.
    # @param [Array[Integer]] request_staff_ids Optional parameter: A list of
    # the requested staff IDs.
    # @param [DateTime] request_start_date_time Optional parameter: Return only
    # staff members that are available at the specified date and time. You must
    # supply a valid `SessionTypeID` and `LocationID` to use this parameter.
    # @return [GetStaffResponse] response from the API call
    def get_staff(version,
                  site_id,
                  authorization: nil,
                  request_filters: nil,
                  request_limit: nil,
                  request_location_id: nil,
                  request_offset: nil,
                  request_session_type_id: nil,
                  request_staff_ids: nil,
                  request_start_date_time: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/staff/staff',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .query_param(new_parameter(request_filters, key: 'request.filters'))
                   .query_param(new_parameter(request_limit, key: 'request.limit'))
                   .query_param(new_parameter(request_location_id, key: 'request.locationId'))
                   .query_param(new_parameter(request_offset, key: 'request.offset'))
                   .query_param(new_parameter(request_session_type_id, key: 'request.sessionTypeId'))
                   .query_param(new_parameter(request_staff_ids, key: 'request.staffIds'))
                   .query_param(new_parameter(request_start_date_time, key: 'request.startDateTime'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetStaffResponse.method(:from_hash)))
        .execute
    end

    # Get configured staff permissions for a staff member.
    # @param [String] version Required parameter: version of the api.
    # @param [Integer] request_staff_id Required parameter: The ID of the staff
    # member whose permissions you want to return.
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [GetStaffPermissionsResponse] response from the API call
    def get_staff_permissions(version,
                              request_staff_id,
                              site_id,
                              authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/public/v{version}/staff/staffpermissions',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .query_param(new_parameter(request_staff_id, key: 'request.staffId'))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetStaffPermissionsResponse.method(:from_hash)))
        .execute
    end

    # Creates a new staff member record at the specified business. The
    # `FirstName` and `LastName` parameters are always required for this
    # request.
    # @param [String] version Required parameter: version of the api.
    # @param [AddStaffRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [AddStaffResponse] response from the API call
    def add_staff(version,
                  request,
                  site_id,
                  authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/staff/addstaff',
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
                   .deserialize_into(AddStaffResponse.method(:from_hash)))
        .execute
    end

    # Assigns a staff member to an appointment session type with staff specific
    # properties such as time length and pay rate. A staff user token must be
    # included with staff assigned the ManageStaffPayRates permission.
    # @param [String] version Required parameter: version of the api.
    # @param [AssignStaffSessionTypeRequest] request Required parameter:
    # Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [AssignStaffSessionTypeResponse] response from the API call
    def assign_staff_session_type(version,
                                  request,
                                  site_id,
                                  authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/staff/assignsessiontype',
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
                   .deserialize_into(AssignStaffSessionTypeResponse.method(:from_hash)))
        .execute
    end

    # Enables to add staff availability or unavailability for a given staff
    # member.
    # @param [String] version Required parameter: version of the api.
    # @param [AddStaffAvailabilityRequest] request Required parameter:
    # Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [void] response from the API call
    def add_staff_availability(version,
                               request,
                               site_id,
                               authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/staff/staffavailability',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # Updates an existing staff member record at the specified business. The ID
    # is a required parameters for this request.
    # @param [String] version Required parameter: version of the api.
    # @param [UpdateStaffRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [UpdateStaffResponse] response from the API call
    def update_staff(version,
                     request,
                     site_id,
                     authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/staff/updatestaff',
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
                   .deserialize_into(UpdateStaffResponse.method(:from_hash)))
        .execute
    end

    # Assigns a permission group to a staff member. A staff user token must be
    # included with staff assigned the ManageStaffPayRates permission.
    # @param [String] version Required parameter: version of the api.
    # @param [UpdateStaffPermissionsRequest] request Required parameter:
    # Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [UpdateStaffPermissionsResponse] response from the API call
    def update_staff_permissions(version,
                                 request,
                                 site_id,
                                 authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/staff/updatestaffpermissions',
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
                   .deserialize_into(UpdateStaffPermissionsResponse.method(:from_hash)))
        .execute
    end
  end
end
