
# Update Product Request

Update Product Request Model

## Structure

`UpdateProductRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `barcode_id` | `String` | Optional | The unique ID of the product variant, for example, a particular size and color combination. |
| `price` | `Float` | Optional | The price of the product.<br>**Constraints**: `>= 0` |
| `online_price` | `Float` | Optional | The online price of the product.<br>**Constraints**: `>= 0` |

## Example (as JSON)

```json
{
  "BarcodeId": "BarcodeId8",
  "Price": 24.38,
  "OnlinePrice": 58.9
}
```

