
# Credit Card Info

INformation about an individual credit card

## Structure

`CreditCardInfo`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `credit_card_number` | `String` | Optional | - |
| `exp_month` | `String` | Optional | - |
| `exp_year` | `String` | Optional | - |
| `billing_name` | `String` | Optional | - |
| `billing_address` | `String` | Optional | - |
| `billing_city` | `String` | Optional | - |
| `billing_state` | `String` | Optional | - |
| `billing_postal_code` | `String` | Optional | - |
| `save_info` | `TrueClass \| FalseClass` | Optional | - |
| `card_id` | `String` | Optional | Card Id of a stored instruments card |
| `cvv` | `String` | Optional | CVV of the card |

## Example (as JSON)

```json
{
  "CreditCardNumber": "CreditCardNumber4",
  "ExpMonth": "ExpMonth6",
  "ExpYear": "ExpYear4",
  "BillingName": "BillingName0",
  "BillingAddress": "BillingAddress2"
}
```

