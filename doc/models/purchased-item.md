
# Purchased Item

## Structure

`PurchasedItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `sale_detail_id` | `Integer` | Optional | The ID which gets assigned to the item when item is added to the cart. |
| `id` | `Integer` | Optional | The ID of the purchased item. Use this ID when calling the GET Services or GET Products endpoint. |
| `is_service` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the purchased item was a pricing option for a service. |
| `barcode_id` | `String` | Optional | The barcode number of the purchased item. Use this ID when calling the GET Products endpoint. |
| `description` | `String` | Optional | The description of the sale transaction/pricing option. |
| `contract_id` | `Integer` | Optional | The contract purchased by the client. Use this ID when calling the GET Contract endpoint. |
| `category_id` | `Integer` | Optional | The revenue category ID used for sale. Use this ID when calling the GET Categories endpoint. |
| `sub_category_id` | `Integer` | Optional | The ID of revenue subcategory. |
| `unit_price` | `Float` | Optional | er Unit Price of the item purchased. |
| `quantity` | `Integer` | Optional | Quantity of the purchased item, applicable for products only. Note: Negative numbers indicate returned items. |
| `discount_percent` | `Float` | Optional | The percent discount that was applied to the items subtotal. |
| `discount_amount` | `Float` | Optional | The total discount amount that was applied to the items subtotal. |
| `tax_1` | `Float` | Optional | A decimal representation of the first tax rate that was applied to the items subtotal. |
| `tax_2` | `Float` | Optional | A decimal representation of the second tax rate that was applied to the items subtotal. |
| `tax_3` | `Float` | Optional | A decimal representation of the third tax rate that was applied to the items subtotal. |
| `tax_4` | `Float` | Optional | A decimal representation of the fourth tax rate that was applied to the items subtotal. |
| `tax_5` | `Float` | Optional | A decimal representation of the fifth tax rate that was applied to the items subtotal. |
| `tax_amount` | `Float` | Optional | Total tax amount that is summation of tax1, tax2, tax3, tax4 and tax5. |
| `total_amount` | `Float` | Optional | The items total, once discounts and/or tax was applied. |
| `notes` | `String` | Optional | Note made by the customer while purchasing item. |
| `returned` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the purchased item is returned, `false` otherwise. |
| `payment_ref_id` | `Integer` | Optional | The payment reference ID generated during payment of sold item. |
| `exp_date` | `DateTime` | Optional | The expiration date of the pricing option purchased. |
| `active_date` | `DateTime` | Optional | The activation date of pricing option purchased. |
| `gift_card_barcode_id` | `String` | Optional | Gift Card BarcodeId |

## Example (as JSON)

```json
{
  "SaleDetailId": 192,
  "Id": 70,
  "IsService": false,
  "BarcodeId": "BarcodeId0",
  "Description": "Description6"
}
```

