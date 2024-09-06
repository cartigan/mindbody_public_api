
# Payment Type

## Structure

`PaymentType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The Payment Type Id used for api calls. |
| `payment_type_name` | `String` | Optional | Payment Type Name |
| `active` | `TrueClass \| FalseClass` | Optional | Check if Payment type is active. |
| `fee` | `Float` | Optional | Payment type fee. |

## Example (as JSON)

```json
{
  "Id": 170,
  "PaymentTypeName": "PaymentTypeName0",
  "Active": false,
  "Fee": 17.74
}
```

