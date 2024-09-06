
# Contact Log

A contact log.

## Structure

`ContactLog`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The contact log’s ID. |
| `text` | `String` | Optional | The contact log’s body text. |
| `created_date_time` | `DateTime` | Optional | The local date and time when the contact log was created. |
| `followup_by_date` | `DateTime` | Optional | The date by which the assigned staff member should close or follow up on this contact log. |
| `contact_method` | `String` | Optional | The method by which the client wants to be contacted. |
| `contact_name` | `String` | Optional | The name of the client to contact. |
| `client` | [`Client`](../../doc/models/client.md) | Optional | The Client. |
| `created_by` | [`Staff`](../../doc/models/staff.md) | Optional | The Staff |
| `assigned_to` | [`Staff`](../../doc/models/staff.md) | Optional | The Staff |
| `comments` | [`Array<ContactLogComment>`](../../doc/models/contact-log-comment.md) | Optional | Information about the comment. |
| `types` | [`Array<ContactLogType>`](../../doc/models/contact-log-type.md) | Optional | Information about the type of contact log. |

## Example (as JSON)

```json
{
  "Id": 128,
  "Text": "Text2",
  "CreatedDateTime": "2016-03-13T12:52:32.123Z",
  "FollowupByDate": "2016-03-13T12:52:32.123Z",
  "ContactMethod": "ContactMethod6"
}
```

