
# Purchase Gift Card Response

## Structure

`PurchaseGiftCardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `barcode_id` | `String` | Optional | The barcode ID assigned to the purchased gift card. |
| `value` | `Float` | Optional | The monetary value of the gift card. |
| `amount_paid` | `Float` | Optional | The amount paid for the gift card by the purchaser. |
| `from_name` | `String` | Optional | The name of the purchaser. |
| `layout_id` | `Integer` | Optional | The ID of the layout used for this gift card. |
| `email_receipt` | `TrueClass \| FalseClass` | Optional | Whether or not an email receipt was sent to the purchaser. If true, a receipt was sent. |
| `purchaser_client_id` | `String` | Optional | The client ID of the purchaser. |
| `purchaser_email` | `String` | Optional | The purchaser’s email address. |
| `recipient_email` | `String` | Optional | The recipient’s email address. |
| `sale_id` | `Integer` | Optional | The sale ID of the gift card. |
| `payment_processing_failures` | [`Array<PaymentProcessingFailure>`](../../doc/models/payment-processing-failure.md) | Optional | Any cart processing failures, for example when SCA challenged, the cart is in PaymentAuthenticationRequired state and at least one of the failures listed will provide an authentication Url. |

## Example (as JSON)

```json
{
  "BarcodeId": "BarcodeId0",
  "Value": 107.42,
  "AmountPaid": 228.46,
  "FromName": "FromName0",
  "LayoutId": 246
}
```

