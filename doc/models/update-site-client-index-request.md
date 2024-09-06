
# Update Site Client Index Request

## Structure

`UpdateSiteClientIndexRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_index_id` | `Integer` | Required | The ID of the client index. |
| `client_index_name` | `String` | Required | The name of the client index. |
| `active` | `TrueClass \| FalseClass` | Optional | Indicates if Client Index is Active |
| `show_on_new_client` | `TrueClass \| FalseClass` | Optional | Indicates if Client Index is shown on a new client profile |
| `show_on_enrollment_roster` | `TrueClass \| FalseClass` | Optional | Indicates if Client Index is shown on Enrollement Roster |
| `edit_on_enrollment_roster` | `TrueClass \| FalseClass` | Optional | Indicates if Client Index can be edited on Enrollement Roster |
| `sort_order` | `Integer` | Optional | Indicates sort order |
| `show_in_consumer_mode` | `TrueClass \| FalseClass` | Optional | Indicates if Client Index is shown in consumer mode. |
| `required_consumer_mode` | `TrueClass \| FalseClass` | Optional | Indicates if the index is required when creating profiles in consumer mode. |
| `required_biz_mode` | `TrueClass \| FalseClass` | Optional | Indicates if the index is required when creating profiles in business mode. |

## Example (as JSON)

```json
{
  "ClientIndexID": 52,
  "ClientIndexName": "ClientIndexName8",
  "Active": false,
  "ShowOnNewClient": false,
  "ShowOnEnrollmentRoster": false,
  "EditOnEnrollmentRoster": false,
  "SortOrder": 60
}
```

