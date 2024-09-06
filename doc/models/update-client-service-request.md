
# Update Client Service Request

## Structure

`UpdateClientServiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `service_id` | `Integer` | Required | The ID of the service to update. |
| `active_date` | `DateTime` | Optional | The date that the service became active. |
| `expiration_date` | `DateTime` | Optional | The date that the service is to expire. |
| `count` | `Integer` | Optional | The number of client service sessions to update. |
| `test` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that input information is to be validated, but not committed.<br /><br>When `false` or omitted, the database is affected.<br /><br>Default: **false** |

## Example (as JSON)

```json
{
  "ServiceId": 32,
  "ActiveDate": "2016-03-13T12:52:32.123Z",
  "ExpirationDate": "2016-03-13T12:52:32.123Z",
  "Count": 144,
  "Test": false
}
```

