
# Transaction

## Structure

`Transaction`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_id` | `Integer` | Optional | The transaction ID. |
| `sale_id` | `Integer` | Optional | The sale ID. |
| `client_id` | `Integer` | Optional | The ID of the client who made the purchase. |
| `amount` | `Float` | Optional | The amount charged on the card |
| `settled` | `TrueClass \| FalseClass` | Optional | Whether it is settled or not |
| `status` | `String` | Optional | Status of the transaction |
| `transaction_time` | `DateTime` | Optional | Time of card swiped |
| `auth_time` | `DateTime` | Optional | Time of card authorized |
| `location_id` | `Integer` | Optional | The ID of the location where the sale takes place. |
| `merchant_id` | `String` | Optional | Merchant ID of the studio |
| `terminal_id` | `String` | Optional | Terminal ID used for payment. Not applicable for CNP/Bank |
| `card_expiration_month` | `String` | Optional | Expiry month of the card |
| `card_expiration_year` | `String` | Optional | Expiry year of the card |
| `cc_last_four` | `String` | Optional | Last 4 digits of CC |
| `card_type` | `String` | Optional | Type of the card |
| `cc_swiped` | `TrueClass \| FalseClass` | Optional | Whether card is swiped or not |
| `ach_last_four` | `String` | Optional | Customer’s ACH last 4 digits |

## Example (as JSON)

```json
{
  "TransactionId": 78,
  "SaleId": 116,
  "ClientId": 136,
  "Amount": 19.46,
  "Settled": false
}
```

