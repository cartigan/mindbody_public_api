
# Staff

The Staff

## Structure

`Staff`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address` | `String` | Optional | The address of the staff member who is teaching the class. |
| `appointment_instructor` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member offers appointments.<br /><br>When `false`, indicates that the staff member does not offer appointments. |
| `always_allow_double_booking` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can be scheduled for overlapping services.<br /><br>When `false`, indicates that the staff can only be scheduled for one service at a time in any given time-frame. |
| `bio` | `String` | Optional | The staff member’s biography. This string contains HTML. |
| `city` | `String` | Optional | The staff member’s city. |
| `country` | `String` | Optional | The staff member’s country. |
| `email` | `String` | Optional | The staff member’s email address. |
| `first_name` | `String` | Optional | The staff member’s first name. |
| `display_name` | `String` | Optional | The staff member’s Nickname. |
| `home_phone` | `String` | Optional | The staff member’s home phone number. |
| `id` | `Integer` | Optional | The ID assigned to the staff member. |
| `independent_contractor` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is an independent contractor.<br>When `false`, indicates that the staff member is not an independent contractor. |
| `is_male` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member is male.<br>When `false`, indicates that the staff member is female. |
| `last_name` | `String` | Optional | The staff member’s last name. |
| `mobile_phone` | `String` | Optional | The staff member’s mobile phone number. |
| `name` | `String` | Optional | The staff member’s name. |
| `postal_code` | `String` | Optional | The staff member’s postal code. |
| `class_teacher` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the staff member can teach classes.<br>When `false`, indicates that the staff member cannot teach classes. |
| `sort_order` | `Integer` | Optional | If configured by the business owner, this field determines a staff member’s weight when sorting. Use this field to sort staff members on your interface. |
| `state` | `String` | Optional | The staff member’s state. |
| `work_phone` | `String` | Optional | The staff member’s work phone number. |
| `image_url` | `String` | Optional | The URL of the staff member’s image, if one has been uploaded. |
| `class_assistant` | `TrueClass \| FalseClass` | Optional | Is the staff an assistant |
| `class_assistant_2` | `TrueClass \| FalseClass` | Optional | Is the staff an assistant2 |
| `employment_start` | `DateTime` | Optional | The start date of employment |
| `employment_end` | `DateTime` | Optional | The end date of employment |
| `provider_i_ds` | `Array<String>` | Optional | A list of ProviderIds for the staff. |
| `rep` | `TrueClass \| FalseClass` | Optional | return true if staff is sales Rep 1 else false. |
| `rep_2` | `TrueClass \| FalseClass` | Optional | return true if staff is sales Rep 2 else false. |
| `rep_3` | `TrueClass \| FalseClass` | Optional | return true if staff is sales Rep 3 else false. |
| `rep_4` | `TrueClass \| FalseClass` | Optional | return true if staff is sales Rep 4 else false. |
| `rep_5` | `TrueClass \| FalseClass` | Optional | return true if staff is sales Rep 5 else false. |
| `rep_6` | `TrueClass \| FalseClass` | Optional | return true if staff is sales Rep 6 else false. |
| `staff_settings` | [`StaffSetting`](../../doc/models/staff-setting.md) | Optional | contains the information about the staff settings. |
| `appointments` | [`Array<Appointment>`](../../doc/models/appointment.md) | Optional | A list of appointments for the staff. |
| `unavailabilities` | [`Array<Unavailability>`](../../doc/models/unavailability.md) | Optional | A list of unavailabilities for the staff. |
| `availabilities` | [`Array<Availability>`](../../doc/models/availability.md) | Optional | A list of availabilities for the staff. |
| `emp_id` | `String` | Optional | The EmpID assigned to the staff member. |

## Example (as JSON)

```json
{
  "Address": "Address8",
  "AppointmentInstructor": false,
  "AlwaysAllowDoubleBooking": false,
  "Bio": "Bio2",
  "City": "City8"
}
```

