
# Add Class Enrollment Schedule Request

## Structure

`AddClassEnrollmentScheduleRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `class_description_id` | `Integer` | Optional | The Id of the class/enrollment description. This can be found in GetClassDescriptions. |
| `location_id` | `Integer` | Optional | The Location Id of the enrollment schedule. |
| `start_date` | `DateTime` | Optional | The start date of the enrollment schedule. |
| `end_date` | `DateTime` | Optional | The end date of the enrollment schedule. |
| `start_time` | `DateTime` | Optional | Enrollment start time (use null or omit for TBD). |
| `end_time` | `DateTime` | Optional | Enrollment end time (ignored if StartTime is null or omitted). |
| `day_sunday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Sunday(s). |
| `day_monday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Monday(s). |
| `day_tuesday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Tuesday(s). |
| `day_wednesday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Wednesday(s). |
| `day_thursday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Thursday(s). |
| `day_friday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Friday(s). |
| `day_saturday` | `TrueClass \| FalseClass` | Optional | If the enrollment occurs on Saturday(s). |
| `staff_id` | `Integer` | Optional | The staff member teaching the enrollment. |
| `staff_pay_rate` | `Integer` | Optional | The staff pay rate. Must be between 1-21. |
| `resource_id` | `Integer` | Optional | The room where the enrollment is taking place. |
| `max_capacity` | `Integer` | Optional | How many people can attend. |
| `web_capacity` | `Integer` | Optional | How many people can signup online.<br>Default: **0** |
| `waitlist_capacity` | `Integer` | Optional | How many people can waitlist.<br>Default:**0** |
| `booking_status` | `String` | Optional | One of: PaymentRequired, BookAndPayLater, Free |
| `allow_open_enrollment` | `TrueClass \| FalseClass` | Optional | Allow clients to choose which sessions they’d like to sign up for.<br>Default: **false** |
| `allow_date_forward_enrollment` | `TrueClass \| FalseClass` | Optional | Allow booking after the enrollment has started.<br>Default: **false** |
| `pricing_options_product_ids` | `Array<Integer>` | Optional | Pricing Options for this schedule |

## Example (as JSON)

```json
{
  "ClassDescriptionId": 176,
  "LocationId": 4,
  "StartDate": "2016-03-13T12:52:32.123Z",
  "EndDate": "2016-03-13T12:52:32.123Z",
  "StartTime": "2016-03-13T12:52:32.123Z"
}
```

