
# Tip

## Structure

`Tip`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `staff_id` | `Integer` | Optional | The ID of the staff member the tip is for. |
| `sale_id` | `Integer` | Optional | The sale’s ID associated with the tip. |
| `sale_date_time` | `DateTime` | Optional | The date and time when the tip was given. |
| `earnings` | `Float` | Optional | The amount tipped to the staff member. |

## Example (as JSON)

```json
{
  "StaffId": 120,
  "SaleId": 26,
  "SaleDateTime": "2016-03-13T12:52:32.123Z",
  "Earnings": 89.8
}
```

