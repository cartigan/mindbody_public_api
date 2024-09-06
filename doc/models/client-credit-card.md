
# Client Credit Card

A client credit card.

## Structure

`ClientCreditCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address` | `String` | Optional | The billing address for the credit card. |
| `card_holder` | `String` | Optional | The name of the card holder. |
| `card_number` | `String` | Optional | The credit card number. |
| `card_type` | `String` | Optional | The type of credit card, for example Visa or MasterCard. |
| `city` | `String` | Optional | The city in which the billing address is located. |
| `exp_month` | `String` | Optional | The month in which the credit card expires. |
| `exp_year` | `String` | Optional | The year in which the credit card expires. |
| `last_four` | `String` | Optional | The last four digits of the credit card number. |
| `postal_code` | `String` | Optional | The postal code where the billing address is located. |
| `state` | `String` | Optional | The state that the billing address is located in. |

## Example (as JSON)

```json
{
  "Address": "Address6",
  "CardHolder": "CardHolder6",
  "CardNumber": "CardNumber0",
  "CardType": "CardType6",
  "City": "City6"
}
```

