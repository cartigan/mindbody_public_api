
# Client Index

A client index.

## Structure

`ClientIndex`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The unique ID of the client index. |
| `name` | `String` | Optional | The name of the client index. |
| `required_business_mode` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the index is required when creating profiles in business mode. |
| `required_consumer_mode` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the index is required when creating profiles in consumer mode. |
| `values` | [`Array<ClientIndexValue>`](../../doc/models/client-index-value.md) | Optional | Contains a list with a single object representing the index value assigned to the client index. |
| `action` | [`Action7Enum`](../../doc/models/action-7-enum.md) | Optional | The action performed on this object. |

## Example (as JSON)

```json
{
  "Id": 214,
  "Name": "Name4",
  "RequiredBusinessMode": false,
  "RequiredConsumerMode": false,
  "Values": [
    {
      "Active": false,
      "Id": 34,
      "Name": "Name4"
    },
    {
      "Active": false,
      "Id": 34,
      "Name": "Name4"
    }
  ]
}
```

