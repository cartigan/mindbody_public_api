
# Reservation

Contains information about the reservation.

## Structure

`Reservation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reservation_id` | `String` | Optional | The unique reservation ID. |
| `reservation_external_id` | `String` | Optional | The unique reservation external ID. |
| `class_id` | `String` | Optional | The unique class ID. |
| `class_external_id` | `String` | Optional | The unique class external ID. |
| `member_external_id` | `String` | Optional | The unique member external ID. |
| `reservation_type` | `String` | Optional | Contains information about the reservation type. |
| `spots` | [`Spot`](../../doc/models/spot.md) | Optional | Contains information about the spot details. |
| `is_confirmed` | `TrueClass \| FalseClass` | Optional | Boolean value whether it is confirmed. |
| `confirmation_date` | `DateTime` | Optional | Contains information about the confirmation date. |

## Example (as JSON)

```json
{
  "ReservationId": "ReservationId2",
  "ReservationExternalId": "ReservationExternalId4",
  "ClassId": "ClassId4",
  "ClassExternalId": "ClassExternalId6",
  "MemberExternalId": "MemberExternalId4"
}
```

