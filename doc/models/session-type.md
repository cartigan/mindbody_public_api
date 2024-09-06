
# Session Type

SessionType contains information about the session types in a business.

## Structure

`SessionType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`TypeEnum`](../../doc/models/type-enum.md) | Optional | Contains the class description session type. Possible values are:<br><br>* All<br>* Class<br>* Enrollment<br>* Appointment<br>* Resource<br>* Media<br>* Arrival |
| `default_time_length` | `Integer` | Optional | The default amount of time that a session of this type typically lasts. |
| `staff_time_length` | `Integer` | Optional | The amount of time that a session of this type will last for a specific Staff (when applicable.) |
| `id` | `Integer` | Optional | This session type’s unique ID. |
| `name` | `String` | Optional | The name of this session type. |
| `online_description` | `String` | Optional | The online description associated with the appointment. |
| `num_deducted` | `Integer` | Optional | The number of sessions that this session type deducts from the pricing option used to pay for this type of session. |
| `program_id` | `Integer` | Optional | This session type’s service category ID. |
| `category` | `String` | Optional | This session type’s category. |
| `category_id` | `Integer` | Optional | This session type’s category ID. |
| `subcategory` | `String` | Optional | This session type’s subcategory. |
| `subcategory_id` | `Integer` | Optional | This session type’s subcategory ID. |
| `available_for_add_on` | `TrueClass \| FalseClass` | Optional | This session type’s Add On Flag. |

## Example (as JSON)

```json
{
  "Type": "Class",
  "DefaultTimeLength": 30,
  "StaffTimeLength": 52,
  "Id": 52,
  "Name": "Name8"
}
```

