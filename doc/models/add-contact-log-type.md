
# Add Contact Log Type

Defines what sort of subtypes we want to add to this contact log type

## Structure

`AddContactLogType`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The contact log type’s ID. |
| `sub_types` | `Array<Integer>` | Optional | A list of the subtype IDs used to tag this contact log type. |

## Example (as JSON)

```json
{
  "Id": 174,
  "SubTypes": [
    222,
    223
  ]
}
```

