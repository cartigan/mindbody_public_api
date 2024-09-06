
# Time Card Event

## Structure

`TimeCardEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `staff_id` | `Integer` | Optional | The ID of the requested staff member. |
| `task` | `String` | Optional | The staff member’s job title. |
| `time_in` | `DateTime` | Optional | The time that the staff member started the job task. |
| `time_out` | `DateTime` | Optional | The time that the staff member stopped doing the job task. |
| `hours` | `Float` | Optional | The number of hours on this time card, rounded to the nearest fourth decimal place. |
| `hourly_rate` | `Float` | Optional | The hourly rate the business pays this staff for this `Task`. |
| `earnings` | `Float` | Optional | The total amount earned by the staff member for this time card entry. |

## Example (as JSON)

```json
{
  "StaffId": 80,
  "Task": "Task8",
  "TimeIn": "2016-03-13T12:52:32.123Z",
  "TimeOut": "2016-03-13T12:52:32.123Z",
  "Hours": 52.56
}
```

