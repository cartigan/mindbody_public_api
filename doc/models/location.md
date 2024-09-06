
# Location

## Structure

`Location`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `additional_image_ur_ls` | `Array<String>` | Optional | A list of URLs of any images associated with this location. |
| `address` | `String` | Optional | The first line of the location’s street address. |
| `address_2` | `String` | Optional | A second address line for the location’s street address, if needed. |
| `amenities` | [`Array<Amenity>`](../../doc/models/amenity.md) | Optional | A list of strings representing amenities available at the location. |
| `business_description` | `String` | Optional | The business description for the location, as configured by the business owner. |
| `city` | `String` | Optional | The location’s city. |
| `description` | `String` | Optional | A description of the location. |
| `has_classes` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that classes are held at this location.<br /><br>When `false`, Indicates that classes are not held at this location. |
| `id` | `Integer` | Optional | The ID assigned to this location. |
| `latitude` | `Float` | Optional | The location’s latitude. |
| `longitude` | `Float` | Optional | The location’s longitude. |
| `name` | `String` | Optional | The name of this location. |
| `phone` | `String` | Optional | The location’s phone number. |
| `phone_extension` | `String` | Optional | The location’s phone extension. |
| `postal_code` | `String` | Optional | The location’s postal code. |
| `site_id` | `Integer` | Optional | The ID number assigned to this location. |
| `state_prov_code` | `String` | Optional | The location’s state or province code. |
| `tax_1` | `Float` | Optional | A decimal representation of the location’s first tax rate. Tax properties are provided to apply all taxes to the purchase price that the purchase is subject to. Use as many tax properties as needed to represent all the taxes that apply in the location. Enter a decimal number that represents the appropriate tax rate. For example, for an 8% sales tax, enter 0.08. |
| `tax_2` | `Float` | Optional | A decimal representation of the location’s second tax rate. See the example in the description of Tax1. |
| `tax_3` | `Float` | Optional | A decimal representation of the location’s third tax rate. See the example in the description of Tax1. |
| `tax_4` | `Float` | Optional | A decimal representation of the location’s fourth tax rate. See the example in the description of Tax1. |
| `tax_5` | `Float` | Optional | A decimal representation of the location’s fifth tax rate. See the example in the description of Tax1. |
| `total_number_of_ratings` | `Integer` | Optional | The number of reviews that clients have left for this location. |
| `average_rating` | `Float` | Optional | The average rating for the location, out of five stars. |
| `total_number_of_deals` | `Integer` | Optional | The number of distinct introductory pricing options available for purchase at this location. |

## Example (as JSON)

```json
{
  "AdditionalImageURLs": [
    "AdditionalImageURLs4"
  ],
  "Address": "Address2",
  "Address2": "Address24",
  "Amenities": [
    {
      "Id": 214,
      "Name": "Name8"
    },
    {
      "Id": 214,
      "Name": "Name8"
    },
    {
      "Id": 214,
      "Name": "Name8"
    }
  ],
  "BusinessDescription": "BusinessDescription8"
}
```

