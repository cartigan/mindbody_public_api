
# Products Inventory

## Structure

`ProductsInventory`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `Integer` | Optional | A ProductId of the product. |
| `barcode_id` | `String` | Optional | The Id is barcode Id of the product. |
| `location_id` | `Integer` | Optional | The LocationId of the product. |
| `units_logged` | `Integer` | Optional | UnitsLogged of the product. |
| `units_sold` | `Integer` | Optional | UnitsSold of the product. |
| `units_in_stock` | `Integer` | Optional | The units in stock of the product |
| `reorder_level` | `Integer` | Optional | ReorderLevel of the product. |
| `max_level` | `Integer` | Optional | MaxLevel of the product. |
| `created_date_time_utc` | `DateTime` | Optional | CreatedDateTimeUTC of the product. |
| `modified_date_time_utc` | `DateTime` | Optional | ModifiedDateTimeUTC of the product. |

## Example (as JSON)

```json
{
  "ProductId": 114,
  "BarcodeId": "BarcodeId0",
  "LocationId": 216,
  "UnitsLogged": 10,
  "UnitsSold": 24
}
```

