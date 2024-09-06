
# Add Client Direct Debit Info Response

## Structure

`AddClientDirectDebitInfoResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_id` | `String` | Optional | The ID of the client being updated |
| `name_on_account` | `String` | Optional | The name on the bank account being added |
| `routing_number` | `String` | Optional | The routing number of the bank account being added |
| `account_number` | `String` | Optional | The bank account number |
| `account_type` | `String` | Optional | The account type.<br><br>Possible values:<br><br>* Checking<br>* Savings |

## Example (as JSON)

```json
{
  "ClientId": "ClientId8",
  "NameOnAccount": "NameOnAccount8",
  "RoutingNumber": "RoutingNumber2",
  "AccountNumber": "AccountNumber2",
  "AccountType": "AccountType8"
}
```

