
# Add Staff Availability Request

Add Staff Availability/Unavailability Schedule

## Structure

`AddStaffAvailabilityRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `staff_id` | `Integer` | Required | The ID of the staff member that availability or unavailability will be added. |
| `is_availability` | `TrueClass \| FalseClass` | Required | When `true`, indicates that availability will be added, <br /><br>When `false`, indicates that unavailability will be added. |
| `description` | `String` | Optional | The description of the unavailability, ex. Lunch, Vacation. Required if IsAvailability passed as `false`.<br>Omit if IsAvailability passed as `true`. |
| `program_ids` | `Array<Integer>` | Optional | A list of program IDs. Must be a valid active schedulable Program ID. Required if IsAvailability passed as `true`.<br>Omit if IsAvailability passed as `false`. |
| `location_id` | `Integer` | Optional | The ID of the location where the availability is added. Required if IsAvailability passed as `true`.<br>Omit if IsAvailability passed as `false`. |
| `days_of_week` | `Array<String>` | Required | The days of the week. Must contain at least one of the following Sunday, Monday, Tuesday etc. |
| `start_time` | `String` | Required | The start time of the schedule. Must be in HH:MM:SS format.<br>**Constraints**: *Pattern*: `^(?:(?:([01]?\d\|2[0-3]):)?([0-5]?\d):)?([0-5]?\d)$` |
| `end_time` | `String` | Required | The end time of the schedule. Must be in HH:MM:SS format.<br>**Constraints**: *Pattern*: `^(?:(?:([01]?\d\|2[0-3]):)?([0-5]?\d):)?([0-5]?\d)$` |
| `start_date` | `String` | Required | The start date of the schedule. Must be in YYYY-MM-DD format.<br>**Constraints**: *Pattern*: `^\d{4}-((0\d)\|(1[012]))-(([012]\d)\|3[01])$` |
| `end_date` | `String` | Required | The end date of the schedule. Must be in YYYY-MM-DD format.<br>**Constraints**: *Pattern*: `^\d{4}-((0\d)\|(1[012]))-(([012]\d)\|3[01])$` |
| `status` | `String` | Optional | The status of availability or unavailability. Possible values are:<br><br>* Masked<br>* Hidden<br>* Public<br><br>Default: Public |

## Example (as JSON)

```json
{
  "StaffId": 138,
  "IsAvailability": false,
  "Description": "Description8",
  "ProgramIds": [
    188,
    189,
    190
  ],
  "LocationId": 188,
  "DaysOfWeek": [
    "DaysOfWeek5",
    "DaysOfWeek6",
    "DaysOfWeek7"
  ],
  "StartTime": "StartTime2",
  "EndTime": "EndTime8",
  "StartDate": "StartDate8",
  "EndDate": "EndDate4",
  "Status": "Status2"
}
```

