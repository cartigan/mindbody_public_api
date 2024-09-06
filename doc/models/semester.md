
# Semester

Semesters help you quickly classify enrollments.

## Structure

`Semester`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | This semester’s unique ID. |
| `name` | `String` | Optional | Name of the semester. |
| `description` | `String` | Optional | The description of the semester. |
| `start_date` | `DateTime` | Optional | Start date of the semester. |
| `end_date` | `DateTime` | Optional | End date of the semester. |
| `multi_registration_discount` | `Float` | Optional | Discount for multiple registration in the semester. |
| `multi_registration_deadline` | `DateTime` | Optional | Registration deadline of the semester. |
| `active` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the semester is active. |

## Example (as JSON)

```json
{
  "Id": 224,
  "Name": "Name0",
  "Description": "Description6",
  "StartDate": "2016-03-13T12:52:32.123Z",
  "EndDate": "2016-03-13T12:52:32.123Z"
}
```

