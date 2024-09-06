
# Client Purchase Record

A record of a specific client purchase

## Structure

`ClientPurchaseRecord`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `sale` | [`Sale`](../../doc/models/sale.md) | Optional | Contains the Sale details. |
| `description` | `String` | Optional | The item name and description. |
| `account_payment` | `TrueClass \| FalseClass` | Optional | If `true`, the item was a payment credited to an account. |
| `price` | `Float` | Optional | The price paid for the item. |
| `amount_paid` | `Float` | Optional | The amount paid for the item. |
| `discount` | `Float` | Optional | The discount amount that was applied to the item. |
| `tax` | `Float` | Optional | The amount of tax that was applied to the item. |
| `returned` | `TrueClass \| FalseClass` | Optional | The return status of the item. If `true`, this item was returned. |
| `quantity` | `Integer` | Optional | The quantity of the item purchased. |

## Example (as JSON)

```json
{
  "Sale": {
    "Id": 174,
    "SaleDate": "2016-03-13T12:52:32.123Z",
    "SaleTime": "SaleTime0",
    "SaleDateTime": "2016-03-13T12:52:32.123Z",
    "OriginalSaleDateTime": "2016-03-13T12:52:32.123Z"
  },
  "Description": "Description6",
  "AccountPayment": false,
  "Price": 138.2,
  "AmountPaid": 162.76
}
```

