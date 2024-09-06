
# Staff 1

## Structure

`Staff1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The ID assigned to the staff member. |
| `first_name` | `String` | Optional | The staff member’s first name. |
| `last_name` | `String` | Optional | The staff member’s last name. |
| `display_name` | `String` | Optional | The display name of the staff member. |
| `email` | `String` | Optional | The staff member’s email address. |
| `bio` | `String` | Optional | The staff member’s biography. This string contains HTML. |
| `address` | `String` | Optional | The address of the staff member who is teaching the class. |
| `address_2` | `String` | Optional | The address2 of the staff member who is teaching the class. |
| `city` | `String` | Optional | The staff member’s city. |
| `state` | `String` | Optional | The staff member’s state. |
| `postal_code` | `String` | Optional | The staff member’s postal code. |
| `foreign_zip` | `String` | Optional | The staff member’s Foreign Zip code. |
| `country` | `String` | Optional | The staff member’s country. |
| `work_phone` | `String` | Optional | The staff member’s work phone number. |
| `home_phone` | `String` | Optional | The staff member’s home phone number. |
| `cell_phone` | `String` | Optional | The staff member’s mobile phone number. |
| `active` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is Active.<br>When `false`, indicates that the staff member is not Active. |
| `is_system` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is a system .<br>When `false`, indicates that the staff member is not system. |
| `smode_id` | `Integer` | Optional | The Staff's Smode Id |
| `appointment_trn` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member offers appointments.<br>When `false`, indicates that the staff member does not offer appointments. |
| `always_allow_double_booking` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can be scheduled for overlapping services.<br>When `false`, indicates that the staff can only be scheduled for one service at a time in any given time-frame. |
| `independent_contractor` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is an independent contractor.<br>When `false`, indicates that the staff member is not an independent contractor. |
| `image_url` | `String` | Optional | The URL of the staff member’s image, if one has been uploaded. |
| `is_male` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is male.<br>When `false`, indicates that the staff member is female. |
| `reservation_trn` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member offers Reservation.<br>When `false`, indicates that the staff member does not offer Reservation. |
| `sort_order` | `Integer` | Optional | If configured by the business owner, this field determines a staff member’s weight when sorting. Use this field to sort staff members on your interface. |
| `multi_location_permission` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member has Multi Location Permission.<br>When `false`, indicates that the staff member does not has Multi Location Permission. |
| `name` | `String` | Optional | The staff member’s name. |
| `provider_i_ds` | `Array<String>` | Optional | A list of ProviderIds for the staff. |
| `staff_settings` | [`StaffSetting`](../../doc/models/staff-setting.md) | Optional | contains the information about the staff settings. |
| `rep` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is sales Rep 1 else `false`. |
| `rep_2` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is sales Rep 2 else `false`. |
| `rep_3` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is sales Rep 3 else `false`. |
| `rep_4` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is sales Rep 4 else `false`. |
| `rep_5` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is sales Rep 5 else `false`. |
| `rep_6` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is sales Rep 6 else `false`. |
| `assistant` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is assistant.<br>When `false`, indicates that the staff is not assistant. |
| `assistant_2` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff is assistant2.<br>When `false`, indicates that the staff is not assistant2. |
| `employment_start` | `DateTime` | Optional | The start date of employment. |
| `employment_end` | `DateTime` | Optional | The end date of employment. |
| `emp_id` | `String` | Optional | The custom staff ID assigned to the staff member. |
| `appointments` | [`Array<Appointment1>`](../../doc/models/appointment-1.md) | Optional | A list of appointments for the staff. |
| `unavailabilities` | [`Array<Unavailability1>`](../../doc/models/unavailability-1.md) | Optional | A list of unavailabilities for the staff. |
| `availabilities` | [`Array<Availability1>`](../../doc/models/availability-1.md) | Optional | A list of availabilities for the staff. |
| `login_locations` | [`Array<Location1>`](../../doc/models/location-1.md) | Optional | A list of LoginLocations for the staff |

## Example (as JSON)

```json
{
  "Id": 94,
  "FirstName": "FirstName6",
  "LastName": "LastName4",
  "DisplayName": "DisplayName8",
  "Email": "Email6"
}
```

