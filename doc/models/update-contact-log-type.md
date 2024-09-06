
# Update Contact Log Type

## Structure

`UpdateContactLogType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The ID of the contact log type to update the subtypes of. |
| `sub_types` | `Array<Integer>` | Optional | The subtype IDs that are to be added to the contact log. |

## Example (as JSON)

```json
{
  "Id": 92,
  "SubTypes": [
    140,
    141
  ]
}
```

