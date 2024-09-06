
# Substitute Class Teacher Request

## Structure

`SubstituteClassTeacherRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `class_id` | `Integer` | Required | The ID of the class to which a substitute teacher needs to be assigned. |
| `staff_id` | `Integer` | Required | The staff ID of the teacher to substitute. |
| `override_conflicts` | `TrueClass \| FalseClass` | Optional | When `true`, overrides any conflicts in the schedule. |
| `send_client_email` | `TrueClass \| FalseClass` | Optional | When `true`, sends the client an automatic email about the substitution, if the client has opted to receive email. |
| `send_original_teacher_email` | `TrueClass \| FalseClass` | Optional | When `true`, sends the originally scheduled teacher an automatic email about the substitution. |
| `send_substitute_teacher_email` | `TrueClass \| FalseClass` | Optional | When `true`, sends the substituted teacher an automatic email about the substitution. |

## Example (as JSON)

```json
{
  "ClassId": 242,
  "StaffId": 84,
  "OverrideConflicts": false,
  "SendClientEmail": false,
  "SendOriginalTeacherEmail": false,
  "SendSubstituteTeacherEmail": false
}
```

