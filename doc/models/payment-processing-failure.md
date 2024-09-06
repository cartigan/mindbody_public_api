
# Payment Processing Failure

Contains information about any payment processing failure.  Specifically for when an SCA challenge is

## Structure

`PaymentProcessingFailure`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | Returned only if SCA challenge is indicated. |
| `message` | `String` | Optional | Returned only if SCA challenge is indicated. |
| `authentication_redirect_url` | `String` | Optional | Returned only if SCA challenge is indicated. |

## Example (as JSON)

```json
{
  "Type": "Type2",
  "Message": "Message8",
  "AuthenticationRedirectUrl": "AuthenticationRedirectUrl8"
}
```

