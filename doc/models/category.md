
# Category

## Structure

`Category`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The category Id used for api calls. |
| `category_name` | `String` | Optional | Category Name |
| `description` | `String` | Optional | Category Description |
| `service` | `TrueClass \| FalseClass` | Optional | Category service |
| `active` | `TrueClass \| FalseClass` | Optional | Check if Category is active. |
| `is_primary` | `TrueClass \| FalseClass` | Optional | Check if Category is of primary type. |
| `is_secondary` | `TrueClass \| FalseClass` | Optional | Check if Category is of secondary type. |
| `created_date_time_utc` | `DateTime` | Optional | Category Created DateTime UTC |
| `modified_date_time_utc` | `DateTime` | Optional | Category Modified DateTime UTC |
| `sub_categories` | [`Array<SubCategory>`](../../doc/models/sub-category.md) | Optional | Contains the SubCategory objects, each of which describes the subcategories for a category. |
| `total_count` | `Integer` | Optional | Get total number of rows |

## Example (as JSON)

```json
{
  "Id": 30,
  "CategoryName": "CategoryName0",
  "Description": "Description8",
  "Service": false,
  "Active": false
}
```

