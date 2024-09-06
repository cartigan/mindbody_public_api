# Enrollment

```ruby
enrollment_controller = client.enrollment
```

## Class Name

`EnrollmentController`

## Methods

* [Get Enrollments](../../doc/controllers/enrollment.md#get-enrollments)
* [Add Client to Enrollment](../../doc/controllers/enrollment.md#add-client-to-enrollment)
* [Add Enrollment Schedule](../../doc/controllers/enrollment.md#add-enrollment-schedule)
* [Update Enrollment Schedule](../../doc/controllers/enrollment.md#update-enrollment-schedule)


# Get Enrollments

Returns a list of enrollments. An enrollment is a service, such as a workshop or an event, that a staff member offers to multiple students, who commit to coming to all or most of the scheduled sessions. Enrollments typically run for a limited time only.

When a user token is not passed with the request or the passed user token has insufficient viewing permissions, only the following staff data is returned in the response:

* FirstName
* LastName
* Id
* Bio
* DisplayName
* ImageUrl

```ruby
def get_enrollments(version,
                    site_id,
                    authorization: nil,
                    request_class_schedule_ids: nil,
                    request_end_date: nil,
                    request_limit: nil,
                    request_location_ids: nil,
                    request_offset: nil,
                    request_program_ids: nil,
                    request_session_type_ids: nil,
                    request_staff_ids: nil,
                    request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_class_schedule_ids` | `Array<Integer>` | Query, Optional | A list of the requested class schedule IDs. If omitted, all class schedule IDs return. |
| `request_end_date` | `DateTime` | Query, Optional | The end of the date range. The response returns any active enrollments that occur on or before this day.<br /><br>Default: **StartDate** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | List of the IDs for the requested locations. If omitted, all location IDs return. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_program_ids` | `Array<Integer>` | Query, Optional | List of the IDs for the requested programs. If omitted, all program IDs return. |
| `request_session_type_ids` | `Array<Integer>` | Query, Optional | List of the IDs for the requested session types. If omitted, all session types IDs return. |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | List of the IDs for the requested staff IDs. If omitted, all staff IDs return. |
| `request_start_date` | `DateTime` | Query, Optional | The start of the date range. The response returns any active enrollments that occur on or after this day.<br /><br>Default: **today’s date** |

## Response Type

[`GetEnrollmentsResponse`](../../doc/models/get-enrollments-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_class_schedule_ids = [
  149,
  150,
  151
]

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_location_ids = [
  192
]

request_offset = 100

request_program_ids = [
  91,
  92,
  93
]

request_session_type_ids = [
  228,
  229
]

request_staff_ids = [
  23,
  24,
  25
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = enrollment_controller.get_enrollments(
  version,
  site_id,
  authorization: authorization,
  request_class_schedule_ids: request_class_schedule_ids,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_program_ids: request_program_ids,
  request_session_type_ids: request_session_type_ids,
  request_staff_ids: request_staff_ids,
  request_start_date: request_start_date
)
```


# Add Client to Enrollment

Book a client into an enrollment.

```ruby
def add_client_to_enrollment(version,
                             request,
                             site_id,
                             authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddClientToEnrollmentRequest`](../../doc/models/add-client-to-enrollment-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`ClassSchedule`](../../doc/models/class-schedule.md)

## Example Usage

```ruby
version = '6'

request = AddClientToEnrollmentRequest.new(
  'ClientId0',
  36,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  [
    DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  ],
  false,
  false,
  false
)

site_id = '-99'

authorization = 'authorization6'

result = enrollment_controller.add_client_to_enrollment(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Enrollment Schedule

This endpoint adds a enrollment schedule. You can require clients to sign up for the entire enrollment schedule or allow them to pick specific sessions using the AllowOpenEnrollment parameter.

```ruby
def add_enrollment_schedule(version,
                            request,
                            site_id,
                            authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddClassEnrollmentScheduleRequest`](../../doc/models/add-class-enrollment-schedule-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`WrittenClassSchedulesInfo`](../../doc/models/written-class-schedules-info.md)

## Example Usage

```ruby
version = '6'

request = AddClassEnrollmentScheduleRequest.new(
  66,
  238,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

site_id = '-99'

authorization = 'authorization6'

result = enrollment_controller.add_enrollment_schedule(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Enrollment Schedule

This endpoint update a enrollment schedule.

```ruby
def update_enrollment_schedule(version,
                               request,
                               site_id,
                               authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateClassEnrollmentScheduleRequest`](../../doc/models/update-class-enrollment-schedule-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`WrittenClassSchedulesInfo`](../../doc/models/written-class-schedules-info.md)

## Example Usage

```ruby
version = '6'

request = UpdateClassEnrollmentScheduleRequest.new(
  90,
  66,
  238,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

site_id = '-99'

authorization = 'authorization6'

result = enrollment_controller.update_enrollment_schedule(
  version,
  request,
  site_id,
  authorization: authorization
)
```

