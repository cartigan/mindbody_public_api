
# Staff Session Type

## Structure

`StaffSessionType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `staff_id` | `Integer` | Optional | The staff member Id |
| `type` | [`Type2Enum`](../../doc/models/type-2-enum.md) | Optional | Contains the class description session type. |
| `id` | `Integer` | Optional | This session type’s unique Id. |
| `name` | `String` | Optional | The name of this session type. |
| `num_deducted` | `Integer` | Optional | The number of sessions that this session type deducts from the pricing option used to pay for this type of session. |
| `program_id` | `Integer` | Optional | This session type’s service category Id. |
| `category` | `String` | Optional | This session type’s category. |
| `category_id` | `Integer` | Optional | This session type’s category Id. |
| `subcategory` | `String` | Optional | This session type’s subcategory. |
| `subcategory_id` | `Integer` | Optional | This session type’s subcategory Id. |
| `time_length` | `Integer` | Optional | - |
| `prep_time` | `Integer` | Optional | Prep time in minutes |
| `finish_time` | `Integer` | Optional | Finish time in minutes |
| `pay_rate_type` | `String` | Optional | The pay rate type |
| `pay_rate_amount` | `Float` | Optional | The pay rate amount |

## Example (as JSON)

```json
{
  "StaffId": 216,
  "Type": "All",
  "Id": 206,
  "Name": "Name4",
  "NumDeducted": 166
}
```

