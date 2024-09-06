
# Client Arrival

## Structure

`ClientArrival`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `arrival_program_id` | `Integer` | Optional | Arrival program id |
| `arrival_program_name` | `String` | Optional | Arrival program name |
| `can_access` | `TrueClass \| FalseClass` | Optional | Property to check client can access arrival service. |
| `locations_i_ds` | `Array<Integer>` | Optional | List of locations where arrival service can availed |

## Example (as JSON)

```json
{
  "ArrivalProgramID": 208,
  "ArrivalProgramName": "ArrivalProgramName2",
  "CanAccess": false,
  "LocationsIDs": [
    231,
    232,
    233
  ]
}
```

