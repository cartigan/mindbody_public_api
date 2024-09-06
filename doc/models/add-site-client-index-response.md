
# Add Site Client Index Response

## Structure

`AddSiteClientIndexResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_index_id` | `Integer` | Optional | ID of the client index. |
| `client_index_name` | `String` | Optional | The name of the client index. |
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
  "ClientIndexID": 140,
  "ClientIndexName": "ClientIndexName4",
  "Active": false,
  "ShowOnNewClient": false,
  "ShowOnEnrollmentRoster": false
}
```

