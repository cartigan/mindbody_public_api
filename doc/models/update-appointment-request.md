
# Update Appointment Request

## Structure

`UpdateAppointmentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `appointment_id` | `Integer` | Required | A unique ID for the appointment. |
| `end_date_time` | `DateTime` | Optional | The end date and time of the new appointment.<br><br />Default: **StartDateTime**, offset by the staff member’s default appointment duration. |
| `execute` | `String` | Optional | The action taken to add this appointment. Possible values are: confirm, unconfirm, arrive, unarrive, cancel, latecancel, complete. |
| `gender_preference` | `String` | Optional | The client’s service provider gender preference. |
| `notes` | `String` | Optional | Any general notes about this appointment. |
| `partner_external_id` | `String` | Optional | Optional external key for api partners. |
| `provider_id` | `String` | Optional | If a user has Complementary and Alternative Medicine features enabled, this parameter assigns a provider ID to the appointment. |
| `resource_ids` | `Array<Integer>` | Optional | A list of resource IDs to associate with the new appointment. |
| `send_email` | `TrueClass \| FalseClass` | Optional | Whether to send client an email for cancellations. An email is sent only if the client has an email address and automatic emails have been set up.<br><br />Default: **false** |
| `session_type_id` | `Integer` | Optional | The session type associated with the new appointment. |
| `staff_id` | `Integer` | Optional | The ID of the staff member who is adding the new appointment. |
| `start_date_time` | `DateTime` | Optional | The start date and time of the new appointment. |
| `apply_payment` | `TrueClass \| FalseClass` | Optional | When `true`, appointment will be updated with a current applicable client service from the clients account.<br><br />Default: **false** |
| `test` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the method is to be validated, but no new appointment data is added.<br><br />Default: **false** |

## Example (as JSON)

```json
{
  "AppointmentId": 232,
  "EndDateTime": "2016-03-13T12:52:32.123Z",
  "Execute": "Execute6",
  "GenderPreference": "GenderPreference8",
  "Notes": "Notes0",
  "PartnerExternalId": "PartnerExternalId8"
}
```

