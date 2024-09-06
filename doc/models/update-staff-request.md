
# Update Staff Request

## Structure

`UpdateStaffRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | The unique ID of the staff member. |
| `first_name` | `String` | Optional | The staff member first name. You must specify a first name when you add a staff member. |
| `last_name` | `String` | Optional | The staff member last name. You must specify a last name when you add a staff member. |
| `email` | `String` | Optional | The staff member’s email address. |
| `is_male` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is male.<br>When `false`, indicates that the staff member is female. |
| `home_phone` | `String` | Optional | The staff member’s home phone number. |
| `work_phone` | `String` | Optional | The staff member’s work phone number. |
| `mobile_phone` | `String` | Optional | The staff member’s mobile phone number. |
| `bio` | `String` | Optional | The staff member’s biography. This string contains HTML. |
| `address` | `String` | Optional | The first line of the staff member street address |
| `address_2` | `String` | Optional | The second line of the staff member street address, if needed. |
| `city` | `String` | Optional | The staff member’s city. |
| `state` | `String` | Optional | The staff member’s state. |
| `country` | `String` | Optional | The staff member’s country. |
| `postal_code` | `String` | Optional | The staff member’s postal code. |
| `class_assistant` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can be a class assistant. |
| `class_assistant_2` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can be a class assistant. |
| `independent_contractor` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is an independent contractor.<br>When `false`, indicates that the staff member is not an independent contractor. |
| `appointment_instructor` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member offers appointments.<br /><br>When `false`, indicates that the staff member does not offer appointments. |
| `always_allow_double_booking` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can be scheduled for overlapping services.<br /><br>When `false`, indicates that the staff member does not offer appointments. |
| `class_teacher` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can teach classes.<br>When `false`, indicates that the staff member cannot teach classes. |
| `employment_start` | `DateTime` | Optional | The start date of employment |
| `employment_end` | `DateTime` | Optional | The end date of employment |
| `sort_order` | `Integer` | Optional | If configured by the business owner, this field determines a staff member’s weight when sorting. Use this field to sort staff members on your interface. |
| `provider_i_ds` | `Array<String>` | Optional | A list of providerIDs for the staff.  In the US it is one per staff and is numeric, otherwise it can be a list and is alpha-numeric<br>for more information see <a href=" https://support.mindbodyonline.com/s/article/204075743-Provider-IDs?language=en_US" target="blank">Provider IDs</a> |
| `active` | `TrueClass \| FalseClass` | Optional | Indicates if the staff member is active. Staff member cannot be deactivated if they have future classes or appointments. |
| `notes` | `String` | Optional | Staff Member Private Notes |
| `emp_id` | `String` | Optional | The custom staff ID assigned to the staff member. |

## Example (as JSON)

```json
{
  "ID": 160,
  "FirstName": "FirstName8",
  "LastName": "LastName2",
  "Email": "Email8",
  "IsMale": false,
  "HomePhone": "HomePhone8"
}
```

