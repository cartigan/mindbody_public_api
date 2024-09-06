
# Membership

## Structure

`Membership`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `membership_id` | `Integer` | Optional | The membership id. |
| `membership_name` | `String` | Optional | The membership name. |
| `priority` | `Integer` | Optional | The priority/sort order. |
| `member_retail_discount` | `Float` | Optional | The membership discount for retail as a percentage. |
| `member_service_discount` | `Float` | Optional | The membership discount for services as a percentage. |
| `allow_clients_to_schedule_unpaid` | `TrueClass \| FalseClass` | Optional | Allow clients in this membership to schedule unpaid. |
| `online_booking_restricted_to_members_only` | [`Array<ProgramMembership>`](../../doc/models/program-membership.md) | Optional | List of programs that are restricted to clients in this membership only. |
| `day_of_month_scheduling_opens_for_next_month` | `Integer` | Optional | Day of month scheduling opens for next month.  Unrestricted is a null value. |
| `restrict_self_sign_in_to_members_only` | `TrueClass \| FalseClass` | Optional | Restrict self sign in to members only. |
| `allow_members_to_book_appointments_without_paying` | `TrueClass \| FalseClass` | Optional | Allow members to book appointments without paying. |
| `allow_members_to_purchase_non_members_services` | `TrueClass \| FalseClass` | Optional | Allow members to purchase non-members services. |
| `allow_members_to_purchase_non_members_products` | `TrueClass \| FalseClass` | Optional | Allow members to purchase non-members products. |
| `is_active` | `TrueClass \| FalseClass` | Optional | Indicates if the membership is active. |

## Example (as JSON)

```json
{
  "MembershipId": 228,
  "MembershipName": "MembershipName0",
  "Priority": 178,
  "MemberRetailDiscount": 155.74,
  "MemberServiceDiscount": 84.46
}
```

