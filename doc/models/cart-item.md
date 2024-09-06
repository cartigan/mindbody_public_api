
# Cart Item

## Structure

`CartItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `item` | `Object` | Optional | - |
| `discount_amount` | `Float` | Optional | The amount of the discount applied to the item. |
| `visit_ids` | `Array<Integer>` | Optional | The IDs of the booked classes, enrollments, or courses that were reconciled by this cart item. This list is only returned if a valid visit ID was passed in the request’s `VisitIds` list. |
| `appointment_ids` | `Array<Integer>` | Optional | Gets or sets the item. |
| `appointments` | [`Array<Appointment>`](../../doc/models/appointment.md) | Optional | The IDs of the appointments that were reconciled by this cart item. This list is only returned if a valid appointment ID was passed in the request’s `AppointmentIds` list. |
| `id` | `Integer` | Optional | The item’s ID in the current cart. |
| `quantity` | `Integer` | Optional | The quantity of the item being purchased. |

## Example (as JSON)

```json
{
  "Item": {
    "key1": "val1",
    "key2": "val2"
  },
  "DiscountAmount": 228.72,
  "VisitIds": [
    128
  ],
  "AppointmentIds": [
    170,
    169,
    168
  ],
  "Appointments": [
    {
      "GenderPreference": "None",
      "Duration": 20,
      "ProviderId": "ProviderId8",
      "Id": 230,
      "Status": "Completed"
    },
    {
      "GenderPreference": "None",
      "Duration": 20,
      "ProviderId": "ProviderId8",
      "Id": 230,
      "Status": "Completed"
    },
    {
      "GenderPreference": "None",
      "Duration": 20,
      "ProviderId": "ProviderId8",
      "Id": 230,
      "Status": "Completed"
    }
  ]
}
```

