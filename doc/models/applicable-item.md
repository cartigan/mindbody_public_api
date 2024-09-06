
# Applicable Item

Item that will be applied to a promo code

## Structure

`ApplicableItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | Type of a promo code<br>The promotional item type.<br>Possible values are:<br><br>* ServiceCategory<br>* RevenueCategory<br>* Supplier<br>* Item |
| `id` | `Integer` | Optional | The promotional item ID. |
| `name` | `String` | Optional | The promotional item name. |

## Example (as JSON)

```json
{
  "Type": "Type4",
  "Id": 154,
  "Name": "Name4"
}
```

