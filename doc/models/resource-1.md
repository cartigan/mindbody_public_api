
# Resource 1

## Structure

`Resource1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `location_id` | `Integer` | Optional | - |
| `is_active` | `TrueClass \| FalseClass` | Optional | - |
| `schedule_types` | [`Array<ScheduleType4Enum>`](../../doc/models/schedule-type-4-enum.md) | Optional | - |
| `program_ids` | `Array<Integer>` | Optional | - |

## Example (as JSON)

```json
{
  "Id": 168,
  "Name": "Name8",
  "LocationId": 28,
  "IsActive": false,
  "ScheduleTypes": [
    "Media",
    "Resource",
    "Appointment"
  ]
}
```

