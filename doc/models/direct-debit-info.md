
# Direct Debit Info

## Structure

`DirectDebitInfo`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name_on_account` | `String` | Optional | The name on the bank account. |
| `routing_number` | `String` | Optional | The routing number for the bank. |
| `account_number` | `String` | Optional | The last four of the bank account number. |
| `account_type` | `String` | Optional | The account type.<br><br>Possible values:<br><br>* Checking<br>* Savings |

## Example (as JSON)

```json
{
  "NameOnAccount": "NameOnAccount2",
  "RoutingNumber": "RoutingNumber8",
  "AccountNumber": "AccountNumber2",
  "AccountType": "AccountType8"
}
```

