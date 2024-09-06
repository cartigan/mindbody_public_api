
# Add Appointment Request

## Structure

`AddAppointmentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `apply_payment` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that a payment should be applied to the appointment.<br><br />Default: **true** |
| `client_id` | `String` | Required | The RRSID of the client for whom the new appointment is being made. |
| `duration` | `Integer` | Optional | The duration of the appointment. This parameter is used to change the default duration of an appointment. |
| `execute` | `String` | Optional | The action taken to add this appointment. Possible values are: confirm, unconfirm, arrive, unarrive, cancel, latecancel, complete. |
| `end_date_time` | `DateTime` | Optional | The end date and time of the new appointment. <br /><br>Default: **StartDateTime**, offset by the staff member’s default appointment duration. |
| `gender_preference` | `String` | Optional | The client’s service provider gender preference. |
| `location_id` | `Integer` | Required | The ID of the location where the new appointment is to take place. |
| `notes` | `String` | Optional | Any general notes about this appointment. |
| `provider_id` | `String` | Optional | If a user has Complementary and Alternative Medicine features enabled, this parameter assigns a provider ID to the appointment. |
| `resource_ids` | `Array<Integer>` | Optional | A list of resource IDs to associate with the new appointment. |
| `send_email` | `TrueClass \| FalseClass` | Optional | Whether to send client an email for cancellations. An email is sent only if the client has an email address and automatic emails have been set up.<br><br />Default: **false** |
| `session_type_id` | `Integer` | Required | The session type associated with the new appointment. |
| `staff_id` | `Integer` | Required | The ID of the staff member who is adding the new appointment. |
| `staff_requested` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member was requested specifically by the client. |
| `start_date_time` | `DateTime` | Required | The start date and time of the new appointment. |
| `test` | `TrueClass \| FalseClass` | Optional | When true, indicates that the method is to be validated, but no new appointment data is added.<br><br />Default: **false** |
| `is_waitlist` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the client should be added to a specific appointment waiting list.<br>When `false`, the client should not be added to the waiting list.<br>Default: **false** |
| `partner_external_id` | `String` | Optional | Optional external key for api partners. |

## Example (as JSON)

```json
{
  "ApplyPayment": false,
  "ClientId": "ClientId6",
  "Duration": 252,
  "Execute": "Execute8",
  "EndDateTime": "2016-03-13T12:52:32.123Z",
  "GenderPreference": "GenderPreference2",
  "LocationId": 10,
  "SessionTypeId": 110,
  "StaffId": 216,
  "StartDateTime": "2016-03-13T12:52:32.123Z"
}
```

