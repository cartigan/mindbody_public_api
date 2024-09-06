
# Formula Note Response

An individual Client Formula Note.

## Structure

`FormulaNoteResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The formula note ID. |
| `client_id` | `String` | Optional | The unique Id of the client for the formula note. This is the unique ID for the client in the site where the formula note originated. This is different than the ClientId specified in the request, which is the id for the client assigned by the business. |
| `appointment_id` | `Integer` | Optional | The appointment ID that the formula note is related to. |
| `entry_date` | `DateTime` | Optional | The date formula note was created. |
| `note` | `String` | Optional | The new formula note text. |
| `site_id` | `Integer` | Optional | The site Id. |
| `site_name` | `String` | Optional | The site name. |
| `staff_first_name` | `String` | Optional | The first name of the staff for the optional associated appointment. If no appointment ID is provided, this will be null. |
| `staff_last_name` | `String` | Optional | The last name of the staff for the optional associated appointment. If no appointment ID is provided, this will be null. |
| `staff_display_name` | `String` | Optional | The display name of the staff for the optional associated appointment. If no appointment ID is provided, or no display name is specified for the staff member, this will be null. |

## Example (as JSON)

```json
{
  "Id": 160,
  "ClientId": "ClientId2",
  "AppointmentId": 8,
  "EntryDate": "2016-03-13T12:52:32.123Z",
  "Note": "Note4"
}
```

