# Staff

```ruby
staff_controller = client.staff
```

## Class Name

`StaffController`

## Methods

* [Get Staff Image URL](../../doc/controllers/staff.md#get-staff-image-url)
* [Get Sales Reps](../../doc/controllers/staff.md#get-sales-reps)
* [Get Staff Session Types](../../doc/controllers/staff.md#get-staff-session-types)
* [Get Staff](../../doc/controllers/staff.md#get-staff)
* [Get Staff Permissions](../../doc/controllers/staff.md#get-staff-permissions)
* [Add Staff](../../doc/controllers/staff.md#add-staff)
* [Assign Staff Session Type](../../doc/controllers/staff.md#assign-staff-session-type)
* [Add Staff Availability](../../doc/controllers/staff.md#add-staff-availability)
* [Update Staff](../../doc/controllers/staff.md#update-staff)
* [Update Staff Permissions](../../doc/controllers/staff.md#update-staff-permissions)


# Get Staff Image URL

This endpoint can be utilized to retrieve image urls for requested staff member.

```ruby
def get_staff_image_url(version,
                        site_id,
                        authorization: nil,
                        request_staff_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_staff_id` | `Integer` | Query, Optional | The ID of the staff member whose image URL details you want to retrieve. |

## Response Type

[`GetStaffImageURLResponse`](../../doc/models/get-staff-image-url-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_staff_id = 180

result = staff_controller.get_staff_image_url(
  version,
  site_id,
  authorization: authorization,
  request_staff_id: request_staff_id
)
```


# Get Sales Reps

This endpoint returns the basic details of the staffs that are marked as sales reps.

```ruby
def get_sales_reps(version,
                   site_id,
                   authorization: nil,
                   request_active_only: nil,
                   request_limit: nil,
                   request_offset: nil,
                   request_sales_rep_numbers: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, will return only active reps data.<br>Default : **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_sales_rep_numbers` | `Array<Integer>` | Query, Optional | This is the list of the sales rep numbers for which the salesrep data will be fetched. |

## Response Type

[`GetSalesRepsResponse`](../../doc/models/get-sales-reps-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active_only = false

request_limit = 62

request_offset = 100

request_sales_rep_numbers = [
  123,
  124,
  125
]

result = staff_controller.get_sales_reps(
  version,
  site_id,
  authorization: authorization,
  request_active_only: request_active_only,
  request_limit: request_limit,
  request_offset: request_offset,
  request_sales_rep_numbers: request_sales_rep_numbers
)
```


# Get Staff Session Types

Gets a list of active session types for a specific staff member. A staff user token must be included with staff assigned the ManageStaffPayRates permission.

```ruby
def get_staff_session_types(version,
                            request_staff_id,
                            site_id,
                            authorization: nil,
                            request_limit: nil,
                            request_offset: nil,
                            request_online_only: nil,
                            request_program_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_staff_id` | `Integer` | Query, Required | The ID of the staff member whose session types you want to return. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_online_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that only the session types that can be booked online should be returned.<br>Default: **false** |
| `request_program_ids` | `Array<Integer>` | Query, Optional | Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return. |

## Response Type

[`GetStaffSessionTypesResponse`](../../doc/models/get-staff-session-types-response.md)

## Example Usage

```ruby
version = '6'

request_staff_id = 180

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

request_online_only = false

request_program_ids = [
  91,
  92,
  93
]

result = staff_controller.get_staff_session_types(
  version,
  request_staff_id,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset,
  request_online_only: request_online_only,
  request_program_ids: request_program_ids
)
```


# Get Staff

When a user token is not passed with the request or the passed user token has insufficient viewing permissions, only the following staff data is returned in the response:

* FirstName
* LastName
* Id
* Bio
* DisplayName
* ImageUrl
* EmpID

```ruby
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
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_filters` | `Array<String>` | Query, Optional | Filters to apply to the search. Possible values are:<br><br>* StaffViewable<br>* AppointmentInstructor<br>* ClassInstructor<br>* Male<br>* Female |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | Return only staff members that are available at the specified location. You must supply a valid `SessionTypeID` and `StartDateTime` to use this parameter. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_session_type_id` | `Integer` | Query, Optional | Return only staff members that are available for the specified session type. You must supply a valid `StartDateTime` and `LocationID` to use this parameter. |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | A list of the requested staff IDs. |
| `request_start_date_time` | `DateTime` | Query, Optional | Return only staff members that are available at the specified date and time. You must supply a valid `SessionTypeID` and `LocationID` to use this parameter. |

## Response Type

[`GetStaffResponse`](../../doc/models/get-staff-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_filters = [
  'request.filters0',
  'request.filters1',
  'request.filters2'
]

request_limit = 62

request_location_id = 90

request_offset = 100

request_session_type_id = 100

request_staff_ids = [
  23,
  24,
  25
]

request_start_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = staff_controller.get_staff(
  version,
  site_id,
  authorization: authorization,
  request_filters: request_filters,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset,
  request_session_type_id: request_session_type_id,
  request_staff_ids: request_staff_ids,
  request_start_date_time: request_start_date_time
)
```


# Get Staff Permissions

Get configured staff permissions for a staff member.

```ruby
def get_staff_permissions(version,
                          request_staff_id,
                          site_id,
                          authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_staff_id` | `Integer` | Query, Required | The ID of the staff member whose permissions you want to return. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetStaffPermissionsResponse`](../../doc/models/get-staff-permissions-response.md)

## Example Usage

```ruby
version = '6'

request_staff_id = 180

site_id = '-99'

authorization = 'authorization6'

result = staff_controller.get_staff_permissions(
  version,
  request_staff_id,
  site_id,
  authorization: authorization
)
```


# Add Staff

Creates a new staff member record at the specified business. The `FirstName` and `LastName` parameters are always required for this request.

```ruby
def add_staff(version,
              request,
              site_id,
              authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddStaffRequest`](../../doc/models/add-staff-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddStaffResponse`](../../doc/models/add-staff-response.md)

## Example Usage

```ruby
version = '6'

request = AddStaffRequest.new(
  'FirstName8',
  'LastName8',
  'Email8',
  false,
  'HomePhone8',
  'WorkPhone2',
  'MobilePhone6'
)

site_id = '-99'

authorization = 'authorization6'

result = staff_controller.add_staff(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Assign Staff Session Type

Assigns a staff member to an appointment session type with staff specific properties such as time length and pay rate. A staff user token must be included with staff assigned the ManageStaffPayRates permission.

```ruby
def assign_staff_session_type(version,
                              request,
                              site_id,
                              authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AssignStaffSessionTypeRequest`](../../doc/models/assign-staff-session-type-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AssignStaffSessionTypeResponse`](../../doc/models/assign-staff-session-type-response.md)

## Example Usage

```ruby
version = '6'

request = AssignStaffSessionTypeRequest.new(
  188,
  82,
  false,
  222,
  166,
  246,
  'PayRateType2',
  169.62
)

site_id = '-99'

authorization = 'authorization6'

result = staff_controller.assign_staff_session_type(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Staff Availability

Enables to add staff availability or unavailability for a given staff member.

```ruby
def add_staff_availability(version,
                           request,
                           site_id,
                           authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddStaffAvailabilityRequest`](../../doc/models/add-staff-availability-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`void`

## Example Usage

```ruby
version = '6'

request = AddStaffAvailabilityRequest.new(
  188,
  false,
  [
    'DaysOfWeek7'
  ],
  'StartTime4',
  'EndTime0',
  'StartDate0',
  'EndDate6',
  'Description0',
  [
    238
  ],
  238,
  'Status4'
)

site_id = '-99'

authorization = 'authorization6'

staff_controller.add_staff_availability(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Staff

Updates an existing staff member record at the specified business. The ID is a required parameters for this request.

```ruby
def update_staff(version,
                 request,
                 site_id,
                 authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateStaffRequest`](../../doc/models/update-staff-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateStaffResponse`](../../doc/models/update-staff-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateStaffRequest.new(
  142,
  'FirstName8',
  'LastName8',
  'Email8',
  false,
  'HomePhone8'
)

site_id = '-99'

authorization = 'authorization6'

result = staff_controller.update_staff(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Staff Permissions

Assigns a permission group to a staff member. A staff user token must be included with staff assigned the ManageStaffPayRates permission.

```ruby
def update_staff_permissions(version,
                             request,
                             site_id,
                             authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateStaffPermissionsRequest`](../../doc/models/update-staff-permissions-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateStaffPermissionsResponse`](../../doc/models/update-staff-permissions-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateStaffPermissionsRequest.new(
  188,
  'PermissionGroupName8'
)

site_id = '-99'

authorization = 'authorization6'

result = staff_controller.update_staff_permissions(
  version,
  request,
  site_id,
  authorization: authorization
)
```

