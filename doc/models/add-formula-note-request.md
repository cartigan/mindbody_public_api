
# Add Formula Note Request

## Structure

`AddFormulaNoteRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_id` | `String` | Required | The ID of the client who needs to have a formula note added. |
| `appointment_id` | `Integer` | Optional | The appointment ID that the formula note is related to. |
| `note` | `String` | Required | The new formula note text. |

## Example (as JSON)

```json
{
  "ClientId": "ClientId4",
  "AppointmentId": 120,
  "Note": "Note0"
}
```

