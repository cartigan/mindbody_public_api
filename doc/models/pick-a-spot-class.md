
# Pick a Spot Class

Contains information about the PickASpot classes.

## Structure

`PickASpotClass`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `site_id` | `Integer` | Optional | The unique ID of the Site. |
| `location_id` | `Integer` | Optional | The unique ID of the Location. |
| `class_id` | `String` | Optional | The unique ID of the Class. |
| `class_external_id` | `String` | Optional | The unique Class external ID. |
| `class_name` | `String` | Optional | Contains the class name. |
| `class_start_time` | `DateTime` | Optional | Class start time. |
| `class_end_time` | `DateTime` | Optional | Class end time. |
| `class_maximum_capacity` | `Integer` | Optional | Contains information about the Class maximum capacity. |
| `room_id` | `String` | Optional | The unique Room ID. |
| `spots` | [`Spot`](../../doc/models/spot.md) | Optional | Contains information about the spot details. |
| `reservations` | [`Array<Reservation>`](../../doc/models/reservation.md) | Optional | Contains information about the reservation collection. |

## Example (as JSON)

```json
{
  "SiteId": 2,
  "LocationId": 144,
  "ClassId": "ClassId0",
  "ClassExternalId": "ClassExternalId0",
  "ClassName": "ClassName6"
}
```

