
# Prospect Stage

## Structure

`ProspectStage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `active` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the client is a prospect at the business and has not yet purchased any of the business pricing options.<br>When `false`, indicates that the client has already purchased at least one pricing option from the business. |
| `description` | `String` | Optional | A description of the prospect stage. |
| `id` | `Integer` | Optional | The ID of the prospect stage assigned to the client. |

## Example (as JSON)

```json
{
  "Active": false,
  "Description": "Description0",
  "Id": 164
}
```

