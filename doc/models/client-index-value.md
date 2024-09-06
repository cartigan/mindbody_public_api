
# Client Index Value

A client index value.

## Structure

`ClientIndexValue`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `active` | `TrueClass \| FalseClass` | Optional | For this call, this value is always `false` and can be ignored.<br>When `false`, indicates that the index value has been deactivated and cannot be assigned to its parent index. |
| `id` | `Integer` | Optional | The index value’s ID. |
| `name` | `String` | Optional | The name of the client index value. |

## Example (as JSON)

```json
{
  "Active": false,
  "Id": 242,
  "Name": "Name8"
}
```

