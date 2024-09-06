# Appointment

```ruby
appointment_controller = client.appointment
```

## Class Name

`AppointmentController`

## Methods

* [Get Active Session Times](../../doc/controllers/appointment.md#get-active-session-times)
* [Get Add Ons](../../doc/controllers/appointment.md#get-add-ons)
* [Get Appointment Options](../../doc/controllers/appointment.md#get-appointment-options)
* [Get Available Dates](../../doc/controllers/appointment.md#get-available-dates)
* [Get Bookable Items](../../doc/controllers/appointment.md#get-bookable-items)
* [Get Schedule Items](../../doc/controllers/appointment.md#get-schedule-items)
* [Get Staff Appointments](../../doc/controllers/appointment.md#get-staff-appointments)
* [Get Unavailabilities](../../doc/controllers/appointment.md#get-unavailabilities)
* [Add Appointment](../../doc/controllers/appointment.md#add-appointment)
* [Add Appointment Add On](../../doc/controllers/appointment.md#add-appointment-add-on)
* [Update Availability](../../doc/controllers/appointment.md#update-availability)
* [Add Availabilities](../../doc/controllers/appointment.md#add-availabilities)
* [Update Appointment](../../doc/controllers/appointment.md#update-appointment)
* [Remove From Waitlist](../../doc/controllers/appointment.md#remove-from-waitlist)
* [Delete Availability](../../doc/controllers/appointment.md#delete-availability)
* [Delete Appointment Add On](../../doc/controllers/appointment.md#delete-appointment-add-on)


# Get Active Session Times

This is not appointment availability but rather the active business hours for studios and which increments services can be booked at. See BookableItems for appointment availability.

```ruby
def get_active_session_times(version,
                             site_id,
                             authorization: nil,
                             request_end_time: nil,
                             request_limit: nil,
                             request_offset: nil,
                             request_schedule_type: nil,
                             request_session_type_ids: nil,
                             request_start_time: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_time` | `DateTime` | Query, Optional | Filters results to times that end on or before this time on the current date. Any date provided is ignored..<br><br />Default: **23:59:59** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_schedule_type` | [`RequestScheduleTypeEnum`](../../doc/models/request-schedule-type-enum.md) | Query, Optional | Filters on the provided the schedule type. Either `SessionTypeIds` or `ScheduleType` must be provided. |
| `request_session_type_ids` | `Array<Integer>` | Query, Optional | Filters on the provided session type IDs. Either `SessionTypeIds` or `ScheduleType` must be provided. |
| `request_start_time` | `DateTime` | Query, Optional | Filters results to times that start on or after this time on the current date. Any date provided is ignored.<br><br />Default: **00:00:00** |

## Response Type

[`GetActiveSessionTimesResponse`](../../doc/models/get-active-session-times-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_end_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_schedule_type = RequestScheduleTypeEnum::RESOURCE

request_session_type_ids = [
  228,
  229
]

request_start_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = appointment_controller.get_active_session_times(
  version,
  site_id,
  authorization: authorization,
  request_end_time: request_end_time,
  request_limit: request_limit,
  request_offset: request_offset,
  request_schedule_type: request_schedule_type,
  request_session_type_ids: request_session_type_ids,
  request_start_time: request_start_time
)
```


# Get Add Ons

Get active appointment add-ons.

```ruby
def get_add_ons(version,
                site_id,
                authorization: nil,
                request_limit: nil,
                request_offset: nil,
                request_staff_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_staff_id` | `Integer` | Query, Optional | Filter to add-ons only performed by this staff member. |

## Response Type

[`GetAddOnsResponse`](../../doc/models/get-add-ons-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

request_staff_id = 180

result = appointment_controller.get_add_ons(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset,
  request_staff_id: request_staff_id
)
```


# Get Appointment Options

This endpoint has no query parameters.

```ruby
def get_appointment_options(version,
                            site_id,
                            authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetAppointmentOptionsResponse`](../../doc/models/get-appointment-options-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = appointment_controller.get_appointment_options(
  version,
  site_id,
  authorization: authorization
)
```


# Get Available Dates

Returns a list of dates to narrow down staff availability when booking. Dates are those which staff are scheduled to work and do not guarantee booking availabilities. After this call is made, use GET BookableItems to retrieve availabilities for specific dates before booking.

```ruby
def get_available_dates(version,
                        request_session_type_id,
                        site_id,
                        authorization: nil,
                        request_end_date: nil,
                        request_location_id: nil,
                        request_staff_id: nil,
                        request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_session_type_id` | `Integer` | Query, Required | required requested session type ID. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | The end date of the requested date range.<br><br />Default: **StartDate** |
| `request_location_id` | `Integer` | Query, Optional | optional requested location ID. |
| `request_staff_id` | `Integer` | Query, Optional | optional requested staff ID. |
| `request_start_date` | `DateTime` | Query, Optional | The start date of the requested date range. If omitted, the default is used.<br><br />Default: **today’s date** |

## Response Type

[`GetAvailableDatesResponse`](../../doc/models/get-available-dates-response.md)

## Example Usage

```ruby
version = '6'

request_session_type_id = 100

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_location_id = 90

request_staff_id = 180

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = appointment_controller.get_available_dates(
  version,
  request_session_type_id,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_location_id: request_location_id,
  request_staff_id: request_staff_id,
  request_start_date: request_start_date
)
```


# Get Bookable Items

Returns a list of availabilities with the information needed to book appointments. Availabilities include information such as the location and its amenities, staff members, programs, and session types. Recommended to use with GET AvailableDates to see what dates the staff is scheduled to work and narrow down the dates searched. Recommended to use with GET ActiveSessionTimes to see which increments each business allows for booking appointments.
Notes:

- With a wider range of dates, this call may take longer to return results.
- With a higher number of request.sessionTypeIds, this call may take longer to return results.

```ruby
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
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_session_type_ids` | `Array<Integer>` | Query, Required | A list of the requested session type IDs. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_appointment_id` | `Integer` | Query, Optional | If provided, filters out the appointment with this ID. |
| `request_end_date` | `DateTime` | Query, Optional | The end date of the requested date range.<br><br />Default: **StartDate** |
| `request_ignore_default_session_length` | `TrueClass \| FalseClass` | Query, Optional | When `true`, availabilities that are non-default return, for example, a 30-minute availability with a 60-minute default session length.<br /><br>When `false`, only availabilities that have the default session length return. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | A list of the requested location IDs. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | A list of the requested staff IDs. Omit parameter to return all staff availabilities. |
| `request_start_date` | `DateTime` | Query, Optional | The start date of the requested date range.<br><br />Default: **today’s date** |

## Response Type

[`GetBookableItemsResponse`](../../doc/models/get-bookable-items-response.md)

## Example Usage

```ruby
version = '6'

request_session_type_ids = [
  228,
  229
]

site_id = '-99'

authorization = 'authorization6'

request_appointment_id = 194

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_ignore_default_session_length = false

request_limit = 62

request_location_ids = [
  192
]

request_offset = 100

request_staff_ids = [
  23,
  24,
  25
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = appointment_controller.get_bookable_items(
  version,
  request_session_type_ids,
  site_id,
  authorization: authorization,
  request_appointment_id: request_appointment_id,
  request_end_date: request_end_date,
  request_ignore_default_session_length: request_ignore_default_session_length,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_staff_ids: request_staff_ids,
  request_start_date: request_start_date
)
```


# Get Schedule Items

Returns a list of schedule items, including appointments, availabilities, and unavailabilities. Unavailabilities are the times at which appointments cannot be booked, for example, on holidays or after hours when the business is closed.

```ruby
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
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | The end date of the requested date range.<br><br />Default: **today’s date** |
| `request_ignore_prep_finish_times` | `TrueClass \| FalseClass` | Query, Optional | When `true`, appointment preparation and finish unavailabilities are not returned.<br><br />Default: **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | A list of requested location IDs. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | A list of requested staff IDs. |
| `request_start_date` | `DateTime` | Query, Optional | The start date of the requested date range.<br><br />Default: **today’s date** |

## Response Type

[`GetScheduleItemsResponse`](../../doc/models/get-schedule-items-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_ignore_prep_finish_times = false

request_limit = 62

request_location_ids = [
  192
]

request_offset = 100

request_staff_ids = [
  23,
  24,
  25
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = appointment_controller.get_schedule_items(
  version,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_ignore_prep_finish_times: request_ignore_prep_finish_times,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_staff_ids: request_staff_ids,
  request_start_date: request_start_date
)
```


# Get Staff Appointments

Returns a list of appointments by staff member.

```ruby
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
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_appointment_ids` | `Array<Integer>` | Query, Optional | A list of the requested appointment IDs. |
| `request_client_id` | `String` | Query, Optional | The client ID to be returned. |
| `request_end_date` | `DateTime` | Query, Optional | The end date of the requested date range.<br><br />Default: **StartDate** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | A list of the requested location IDs. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | List of staff IDs to be returned. Omit parameter to return staff appointments for all staff. |
| `request_start_date` | `DateTime` | Query, Optional | The start date of the requested date range. If omitted, the default is used.<br><br />Default: **today’s date** |

## Response Type

[`GetStaffAppointmentsResponse`](../../doc/models/get-staff-appointments-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_appointment_ids = [
  17,
  18
]

request_client_id = 'request.clientId2'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_location_ids = [
  192
]

request_offset = 100

request_staff_ids = [
  23,
  24,
  25
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = appointment_controller.get_staff_appointments(
  version,
  site_id,
  authorization: authorization,
  request_appointment_ids: request_appointment_ids,
  request_client_id: request_client_id,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_staff_ids: request_staff_ids,
  request_start_date: request_start_date
)
```


# Get Unavailabilities

Returns a list of unavailabilities. Unavailabilities are the times at which appointments cannot be booked, for example, on holidays or after hours when the business is closed.

```ruby
def get_unavailabilities(version,
                         site_id,
                         authorization: nil,
                         request_end_date: nil,
                         request_limit: nil,
                         request_offset: nil,
                         request_staff_ids: nil,
                         request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | The end date of the requested date range.<br><br />Default: **today’s date** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | A list of requested staff IDs. |
| `request_start_date` | `DateTime` | Query, Optional | The start date of the requested date range.<br><br />Default: **today’s date** |

## Response Type

[`GetUnavailabilitiesResponse`](../../doc/models/get-unavailabilities-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_staff_ids = [
  23,
  24,
  25
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = appointment_controller.get_unavailabilities(
  version,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_staff_ids: request_staff_ids,
  request_start_date: request_start_date
)
```


# Add Appointment

A user token is required for this endpoint. To book an appointment, you must use a location ID, staff ID, client ID, session type ID, and the StartDateTime of the appointment. You can get most of this information using GET BookableItems.

```ruby
def add_appointment(version,
                    request,
                    site_id,
                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddAppointmentRequest`](../../doc/models/add-appointment-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddAppointmentResponse`](../../doc/models/add-appointment-response.md)

## Example Usage

```ruby
version = '6'

request = AddAppointmentRequest.new(
  'ClientId0',
  238,
  82,
  188,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  false,
  224,
  'Execute2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'GenderPreference6'
)

site_id = '-99'

authorization = 'authorization6'

result = appointment_controller.add_appointment(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Appointment Add On

This endpoint books an add-on on top of an existing, regular appointment. To book an add-on, you must use an existing appointment ID and session type ID. You can get a session type ID using `GET AppointmentAddOns`.

```ruby
def add_appointment_add_on(version,
                           request,
                           site_id,
                           authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddAppointmentAddOnRequest`](../../doc/models/add-appointment-add-on-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddAppointmentAddOnResponse`](../../doc/models/add-appointment-add-on-response.md)

## Example Usage

```ruby
version = '6'

request = AddAppointmentAddOnRequest.new(
  false,
  246,
  82,
  188,
  false
)

site_id = '-99'

authorization = 'authorization6'

result = appointment_controller.add_appointment_add_on(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Availability

To update the information for a specific availability or unavailability of the staff.<br />
Note: You must have a staff user token with the required permissions.

```ruby
def update_availability(version,
                        site_id,
                        update_availability_request,
                        authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `update_availability_request` | [`UpdateAvailabilityRequest`](../../doc/models/update-availability-request.md) | Body, Required | - |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateAvailabilityResponse`](../../doc/models/update-availability-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

update_availability_request = UpdateAvailabilityRequest.new(
  [
    12,
    13
  ],
  PublicDisplayEnum::HIDE,
  [
    DaysOfWeekEnum::SUNDAY,
    DaysOfWeekEnum::MONDAY
  ],
  [
    40,
    41
  ],
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

authorization = 'authorization6'

result = appointment_controller.update_availability(
  version,
  site_id,
  update_availability_request,
  authorization: authorization
)
```


# Add Availabilities

Add availabilities and unavailabilities for a staff member.<br />
Note: You must have a staff user token with the required permissions.

```ruby
def add_availabilities(version,
                       request,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddAvailabilitiesRequest`](../../doc/models/add-availabilities-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddAvailabilitiesResponse`](../../doc/models/add-availabilities-response.md)

## Example Usage

```ruby
version = '6'

request = AddAvailabilitiesRequest.new(
  false,
  38,
  [
    125,
    126
  ],
  [
    144,
    145,
    146
  ],
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

site_id = '-99'

authorization = 'authorization6'

result = appointment_controller.add_availabilities(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Appointment

To update the information for a specific appointment, you must have a staff user token with the proper permissions. Note that you can only update the appointment’s `StartDateTime`, `EndDateTime`, `StaffId`, `Notes`, and `SessionTypeId`.

```ruby
def update_appointment(version,
                       request,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateAppointmentRequest`](../../doc/models/update-appointment-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateAppointmentResponse`](../../doc/models/update-appointment-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateAppointmentRequest.new(
  246,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'Execute2',
  'GenderPreference6',
  'Notes8',
  'PartnerExternalId0'
)

site_id = '-99'

authorization = 'authorization6'

result = appointment_controller.update_appointment(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Remove From Waitlist

Remove an appointment from waitlist

```ruby
def remove_from_waitlist(version,
                         request_waitlist_entry_ids,
                         site_id,
                         authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_waitlist_entry_ids` | `Array<Integer>` | Query, Required | A list of `WaitlistEntryIds` to remove from the waiting list. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`void`

## Example Usage

```ruby
version = '6'

request_waitlist_entry_ids = [
  138,
  139
]

site_id = '-99'

authorization = 'authorization6'

appointment_controller.remove_from_waitlist(
  version,
  request_waitlist_entry_ids,
  site_id,
  authorization: authorization
)
```


# Delete Availability

This endpoint deletes the availability or unavailability.
Note: You must have a staff user token with the required permissions.

```ruby
def delete_availability(version,
                        site_id,
                        authorization: nil,
                        delete_availability_request_availability_id: nil,
                        delete_availability_request_test: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `delete_availability_request_availability_id` | `Integer` | Query, Optional | The ID of the availability or unavailability. |
| `delete_availability_request_test` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that this is a test request and no data is deleted from the subscriber’s database.<br>When `false`, the record will be deleted.<br>Default: **false** |

## Response Type

`void`

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

delete_availability_request_availability_id = 186

delete_availability_request_test = false

appointment_controller.delete_availability(
  version,
  site_id,
  authorization: authorization,
  delete_availability_request_availability_id: delete_availability_request_availability_id,
  delete_availability_request_test: delete_availability_request_test
)
```


# Delete Appointment Add On

This endpoint can be used to early-cancel a booked appointment add-on.

```ruby
def delete_appointment_add_on(version,
                              id,
                              site_id,
                              authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `id` | `Integer` | Query, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`void`

## Example Usage

```ruby
version = '6'

id = 112

site_id = '-99'

authorization = 'authorization6'

appointment_controller.delete_appointment_add_on(
  version,
  id,
  site_id,
  authorization: authorization
)
```

