
# Session Type 1

## Structure

`SessionType1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`Type1Enum`](../../doc/models/type-1-enum.md) | Optional | - |
| `default_time_length` | `Integer` | Optional | - |
| `staff_time_length` | `Integer` | Optional | - |
| `program_id` | `Integer` | Optional | - |
| `num_deducted` | `Integer` | Optional | - |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `active` | `TrueClass \| FalseClass` | Optional | - |
| `capacity` | `Integer` | Optional | - |
| `resource_required` | `TrueClass \| FalseClass` | Optional | - |
| `category` | [`ServiceTag`](../../doc/models/service-tag.md) | Optional | ServiceTag refers to Category and Subcategory fields for classes and appointments |
| `subcategory` | [`ServiceTag`](../../doc/models/service-tag.md) | Optional | ServiceTag refers to Category and Subcategory fields for classes and appointments |
| `online_description` | `String` | Optional | - |
| `available_for_add_on` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "Type": "Arrival",
  "DefaultTimeLength": 152,
  "StaffTimeLength": 130,
  "ProgramId": 134,
  "NumDeducted": 246
}
```

