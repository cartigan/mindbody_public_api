
# Program

## Structure

`Program`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The service category’s ID. |
| `name` | `String` | Optional | The name of this service category. |
| `schedule_type` | [`ScheduleTypeEnum`](../../doc/models/schedule-type-enum.md) | Optional | The service category’s schedule type. Possible values are:<br><br>* All<br>* Class<br>* Enrollment<br>* Appointment<br>* Resource<br>* Arrival |
| `cancel_offset` | `Integer` | Optional | The offset to use for the service category. |
| `content_formats` | `Array<String>` | Optional | The content delivery platform(s) used by the service category. Possible values are:<br><br>* InPerson<br>* Livestream:Mindbody<br>* Livestream:Other |
| `schedule_offset` | `Integer` | Optional | Scheduling window offset |
| `schedule_offset_end` | `Integer` | Optional | Scheduling window offset end |
| `pricing_relationships` | [`PricingRelationships`](../../doc/models/pricing-relationships.md) | Optional | - |

## Example (as JSON)

```json
{
  "Id": 104,
  "Name": "Name0",
  "ScheduleType": "Arrival",
  "CancelOffset": 94,
  "ContentFormats": [
    "ContentFormats1",
    "ContentFormats2"
  ]
}
```

