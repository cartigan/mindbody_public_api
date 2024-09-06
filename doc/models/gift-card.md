
# Gift Card

## Structure

`GiftCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The gift card's `ProductID`. |
| `location_ids` | `Array<Integer>` | Optional | The IDs of the locations where the gift card is sold. |
| `description` | `String` | Optional | A description of the gift card. |
| `editable_by_consumer` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the gift card can be edited by the client. |
| `card_value` | `Float` | Optional | The value of the gift card. |
| `sale_price` | `Float` | Optional | The sale price of the gift card, if applicable. |
| `sold_online` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the gift card is sold online. |
| `membership_restriction_ids` | `Array<Integer>` | Optional | A list of IDs for membership restrictions, if this card is restricted to members with certain types of memberships. |
| `gift_card_terms` | `String` | Optional | The terms of the gift card. |
| `contact_info` | `String` | Optional | Contact information for the gift card. |
| `display_logo` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the logo should be displayed on the gift card. |
| `layouts` | [`Array<GiftCardLayout>`](../../doc/models/gift-card-layout.md) | Optional | A list of layouts available for the gift card. |

## Example (as JSON)

```json
{
  "Id": 166,
  "LocationIds": [
    204,
    205
  ],
  "Description": "Description6",
  "EditableByConsumer": false,
  "CardValue": 106.8
}
```

