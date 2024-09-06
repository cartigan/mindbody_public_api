
# Appointment 1

An appointment

## Structure

`Appointment1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `gender_preference` | `String` | Optional | Prefered gender of appointment. |
| `duration` | `Integer` | Optional | Duration of appointment. |
| `provider_id` | `String` | Optional | If a user has Complementary and Alternative Medicine features enabled,<br>this will allow a Provider ID to be assigned to an appointment. |
| `id` | `Integer` | Optional | The unique ID of the appointment. |
| `status` | [`Status1Enum`](../../doc/models/status-1-enum.md) | Optional | The status of this appointment. |
| `start_date_time` | `DateTime` | Optional | The date and time the appointment will start. |
| `end_date_time` | `DateTime` | Optional | The date and time the appointment will end. |
| `notes` | `String` | Optional | The appointment notes. |
| `partner_external_id` | `String` | Optional | Optional external key for api partners. |
| `staff_requested` | `TrueClass \| FalseClass` | Optional | Whether the staff member was requested specifically by the client. |
| `program_id` | `Integer` | Optional | The ID of the program this appointment belongs to. |
| `waitlist_entry_id` | `Integer` | Optional | The ID of the appointment waitlist. |
| `session_type_id` | `Integer` | Optional | The ID of the session type of this appointment. |
| `location_id` | `Integer` | Optional | The ID of the location where this appointment will take place. |
| `staff_id` | `Integer` | Optional | The ID of the staff member instructing this appointment. |
| `client_id` | `String` | Optional | The RSSID of the client booked for this appointment. |
| `first_appointment` | `TrueClass \| FalseClass` | Optional | Whether this is the client's first appointment at the site. |
| `client_service_id` | `Integer` | Optional | The ID of the pass on the client's account that is paying for this appointment. |
| `resources` | [`Array<Resource>`](../../doc/models/resource.md) | Optional | The resources this appointment is using. |
| `add_ons` | [`Array<AddOnSmall1>`](../../doc/models/add-on-small-1.md) | Optional | The Add-Ons Associated with this appointment |
| `is_waitlist` | `TrueClass \| FalseClass` | Optional | Whether to add appointment to waitlist. |
| `online_description` | `String` | Optional | Online Description associated with the appointment |

## Example (as JSON)

```json
{
  "GenderPreference": "GenderPreference8",
  "Duration": 102,
  "ProviderId": "ProviderId0",
  "Id": 56,
  "Status": "Confirmed"
}
```

