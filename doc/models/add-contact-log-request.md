
# Add Contact Log Request

## Structure

`AddContactLogRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_id` | `String` | Required | The ID of the client whose contact log is being added. |
| `assigned_to_staff_id` | `Integer` | Optional | The ID of the staff member to whom the contact log is assigned. |
| `text` | `String` | Optional | The body of the contact log. |
| `followup_by_date` | `DateTime` | Optional | The date by which the assigned staff member should complete this contact log. |
| `contact_method` | `String` | Required | How the client wants to be contacted. |
| `contact_name` | `String` | Optional | The name of the person to be contacted by the assigned staff member. |
| `is_complete` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the contact log is complete.<br>When `false`, indicates the contact log isn’t complete. |
| `comments` | `Array<String>` | Optional | Any comments on the contact log. |
| `types` | [`Array<AddContactLogType>`](../../doc/models/add-contact-log-type.md) | Optional | The contact log types used to tag this contact log. |
| `test` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that this is a test request and no data is inserted into the subscriber’s database.<br /><br>When `false`, the database is updated. |

## Example (as JSON)

```json
{
  "ClientId": "ClientId4",
  "AssignedToStaffId": 142,
  "Text": "Text2",
  "FollowupByDate": "2016-03-13T12:52:32.123Z",
  "ContactMethod": "ContactMethod6",
  "ContactName": "ContactName2",
  "IsComplete": false
}
```

