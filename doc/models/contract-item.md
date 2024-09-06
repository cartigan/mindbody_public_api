
# Contract Item

## Structure

`ContractItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The ID of the item. |
| `name` | `String` | Optional | The name of the item. |
| `description` | `String` | Optional | A description of the item. |
| `type` | `String` | Optional | The type of the item. |
| `price` | `Float` | Optional | The price of the item. |
| `quantity` | `Integer` | Optional | The quantity of the item. |
| `one_time_item` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the item is charged only once.<br /><br>When `false`, indicates that the item is charged multiple times. |

## Example (as JSON)

```json
{
  "Id": "Id6",
  "Name": "Name0",
  "Description": "Description6",
  "Type": "Type0",
  "Price": 54.6
}
```

