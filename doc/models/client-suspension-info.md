
# Client Suspension Info

A Client DTO with Suspension Informatoin

## Structure

`ClientSuspensionInfo`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `booking_suspended` | `TrueClass \| FalseClass` | Optional | When 'true', indicates that the client is suspended from booking |
| `suspension_start_date` | `String` | Optional | Indicates the Date that BookingSuspension starts 'YYYY-MM-DD' |
| `suspension_end_date` | `String` | Optional | Indicates the Date that BookingSuspension ends 'YYYY-MM-DD' |

## Example (as JSON)

```json
{
  "BookingSuspended": false,
  "SuspensionStartDate": "SuspensionStartDate6",
  "SuspensionEndDate": "SuspensionEndDate0"
}
```

