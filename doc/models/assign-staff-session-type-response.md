
# Assign Staff Session Type Response

## Structure

`AssignStaffSessionTypeResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `staff_id` | `Integer` | Optional | Staff member assigned to the session type |
| `session_type_id` | `Integer` | Optional | The session type the staff member is assigned to |
| `pay_rate_type` | `String` | Optional | The pay rate type name<br>Can be: "Flat", "Percent", or "No Pay" |
| `pay_rate_amount` | `Float` | Optional | The pay rate amount. It is interpreted based on the value of PayRateTypeId |
| `time_length` | `Integer` | Optional | The staff specific amount of time that a session of this type typically lasts. |
| `prep_time` | `Integer` | Optional | Prep time in minutes |
| `finish_time` | `Integer` | Optional | Finish time in minutes |
| `active` | `TrueClass \| FalseClass` | Optional | Whether this association is active |

## Example (as JSON)

```json
{
  "StaffId": 148,
  "SessionTypeId": 42,
  "PayRateType": "PayRateType0",
  "PayRateAmount": 87.3,
  "TimeLength": 182
}
```

