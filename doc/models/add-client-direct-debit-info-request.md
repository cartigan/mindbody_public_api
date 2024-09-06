
# Add Client Direct Debit Info Request

## Structure

`AddClientDirectDebitInfoRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `test` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that test mode is enabled. The information is to be validated, but no data will be added or updated.<br>Default: **false** |
| `client_id` | `String` | Optional | The ID of the client being updated |
| `name_on_account` | `String` | Optional | The name on the bank account being added |
| `routing_number` | `String` | Optional | The routing number of the bank account being added |
| `account_number` | `String` | Optional | The bank account number |
| `account_type` | `String` | Optional | The account type.<br><br>Possible values:<br><br>* Checking<br>* Savings |

## Example (as JSON)

```json
{
  "Test": false,
  "ClientId": "ClientId8",
  "NameOnAccount": "NameOnAccount8",
  "RoutingNumber": "RoutingNumber4",
  "AccountNumber": "AccountNumber8"
}
```

