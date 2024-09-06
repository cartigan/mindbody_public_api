
# Purchase Gift Card Request

## Structure

`PurchaseGiftCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `test` | `TrueClass \| FalseClass` | Optional | When `true`, allows you to test the request without affecting the database.<br /><br>When `false`, the request is carried out and the database is affected. |
| `location_id` | `Integer` | Required | The ID of the location where the gift card is being sold. |
| `layout_id` | `Integer` | Optional | The ID of the layout used for the gift card’s image. |
| `purchaser_client_id` | `String` | Required | The RSSID of the client who is purchasing the gift card. |
| `gift_card_id` | `Integer` | Required | The product ID of the gift card being purchased. |
| `send_email_receipt` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that a purchase receipt email should be sent to the purchasing client, if all settings are correctly configured.<br /><br>When `false`, no email is sent to the purchaser. |
| `recipient_email` | `String` | Optional | The email address to send the gift card image to. This parameter is required if the `LayoutId` is not 0.<br /><br>Maximum length: **100** |
| `recipient_name` | `String` | Optional | The name of the person who is to receive the gift card. This parameter is required if the `LayoutId` is not 0.<br /><br>Maximum length: **20** |
| `title` | `String` | Optional | The text to use as the title of the gift card, for example: Happy Birthday, Maria! This parameter is required if the `LayoutId` is not 0.<br /><br>Maximum length: **20** |
| `gift_message` | `String` | Optional | A personal message to include in the gift card.<br /><br>Maximum length: **300** |
| `delivery_date` | `DateTime` | Optional | The date that the gift card’s image is to be delivered to the recipient. This parameter cannot be set to a date in the past. This parameter is required if the `LayoutId` is not 0.<br>Default: **today**<br>Minimum: **today** |
| `payment_info` | [`CheckoutPaymentInfo`](../../doc/models/checkout-payment-info.md) | Optional | - |
| `sales_rep_id` | `Integer` | Optional | The ID of the staff member who is to be marked as the sales rep for this gift card purchase. |
| `consumer_present` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the consumer is available to address any SCA challenge issued by the bank.  EU Only.<br /><br>Default: **false** |
| `payment_authentication_callback_url` | `String` | Optional | This is the Url the consumer will be redirected back to after completion of the Banks SCA challenge. |
| `barcode_id` | `String` | Optional | Sets the barcode ID of the giftcard. When not provided, a barcode ID is automatically generated.<br /><br>If a giftcard with the given barcode ID already exists and the site supports reloadable giftcards, the existing giftcard is reloaded<br /><br>Maximum length: **100**<br>**Constraints**: *Pattern*: `^[^<>'"]{1,100}$` |
| `sender_name` | `String` | Optional | Overrides the name that would otherwise be populated by specifying PurchaserClientId.<br /><br>Maximum length: **20**<br>**Constraints**: *Pattern*: `^[^<>'"]{1,20}$` |

## Example (as JSON)

```json
{
  "Test": false,
  "LocationId": 186,
  "LayoutId": 168,
  "PurchaserClientId": "PurchaserClientId4",
  "GiftCardId": 238,
  "SendEmailReceipt": false,
  "RecipientEmail": "RecipientEmail0",
  "RecipientName": "RecipientName6"
}
```

