
# Upcoming Autopay Event

## Structure

`UpcomingAutopayEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_contract_id` | `Integer` | Optional | The ID of the contract. |
| `charge_amount` | `Float` | Optional | The amount charged. |
| `subtotal` | `Float` | Optional | Subtotal before tax. |
| `tax` | `Float` | Optional | Tax amount. |
| `payment_method` | [`PaymentMethodEnum`](../../doc/models/payment-method-enum.md) | Optional | The payment method. |
| `schedule_date` | `DateTime` | Optional | The date and time of the next payment. |
| `product_id` | `Integer` | Optional | The product id. |

## Example (as JSON)

```json
{
  "ClientContractId": 28,
  "ChargeAmount": 36.94,
  "Subtotal": 66.48,
  "Tax": 77.72,
  "PaymentMethod": "DebitAccount"
}
```

