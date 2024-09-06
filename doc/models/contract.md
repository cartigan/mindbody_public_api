
# Contract

## Structure

`Contract`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The contract’s ID at the subscriber’s business. |
| `name` | `String` | Optional | The name of the contract. |
| `description` | `String` | Optional | A description of the contract. |
| `assigns_membership_id` | `Integer` | Optional | The ID of the membership that was assigned to the client when the client signed up for a contract. |
| `assigns_membership_name` | `String` | Optional | The name of the membership that was assigned to the client when the client signed up for this contract. |
| `sold_online` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that this membership is intended to be shown to clients in client experiences.<br /><br>When `false`, this contract should only be shown to staff members. |
| `contract_items` | [`Array<ContractItem>`](../../doc/models/contract-item.md) | Optional | Contains information about the items in the contract. |
| `intro_offer` | `String` | Optional | Defines whether this contract is treated as an introductory offer. If this is an introductory offer, then clients are always charged a set number of times rather than month to month, using their AutoPays. Possible values are:<br><br>* None<br>* NewConsumer<br>* NewAndReturningConsumer |
| `autopay_schedule` | [`AutopaySchedule`](../../doc/models/autopay-schedule.md) | Optional | - |
| `number_of_autopays` | `Integer` | Optional | The number of times that the AutoPay is to be run. This value is null if `FrequencyType` is `MonthToMonth`. |
| `autopay_trigger_type` | `String` | Optional | Defines whether the AutoPay, if applicable to this contract, runs on a set schedule or when the pricing option runs out or expires. Possible values are:<br><br>* OnSetSchedule<br>* PricingOptionRunsOutOrExpires |
| `action_upon_completion_of_autopays` | `String` | Optional | The renewal action to be taken when this AutoPay is completed. Possible values are:<br><br>* ContractExpires<br>* ContractAutomaticallyRenews |
| `clients_charged_on` | `String` | Optional | The value that indicates when clients are charged. Possible values are:<br><br>* OnSaleDate<br>* FirstOfTheMonth<br>* FifteenthOfTheMonth<br>* LastDayOfTheMonth<br>* FirstOrFifteenthOfTheMonth<br>* FirstOrSixteenthOfTheMonth<br>* FifteenthOrEndOfTheMonth<br>* SpecificDate |
| `clients_charged_on_specific_date` | `DateTime` | Optional | If `ClientsChargedOn` is defined as a specific date, this property holds the value of that date. Otherwise, this property is null. |
| `discount_amount` | `Float` | Optional | The calculated discount applied to the items in this contract. |
| `deposit_amount` | `Float` | Optional | The amount of the deposit required for this contract. |
| `first_autopay_free` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the first payment for the AutoPay is free. |
| `last_autopay_free` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the last payment for the AutoPay is free. |
| `client_terminate_online` | `TrueClass \| FalseClass` | Optional | When `true`, indicates that the client can terminate this contract on the Internet. |
| `membership_type_restrictions` | [`Array<MembershipTypeRestriction>`](../../doc/models/membership-type-restriction.md) | Optional | Contains information about the memberships that can purchase this contract. If null, then no membership restrictions exist, and anyone can purchase the contract. |
| `location_purchase_restriction_ids` | `Array<Integer>` | Optional | The IDs of the locations where this contract may be sold. If there are no restrictions, this value is null. |
| `location_purchase_restriction_names` | `Array<String>` | Optional | Location names where the contract may be purchased. If this value is null, there are no restrictions. |
| `agreement_terms` | `String` | Optional | Business-defined terms and conditions for the contract. |
| `requires_electronic_confirmation` | `TrueClass \| FalseClass` | Optional | When `true`, clients who purchase the contract are prompted to agree to the terms of the contract the next time that they log in. |
| `autopay_enabled` | `TrueClass \| FalseClass` | Optional | When `true`, this contract establishes an AutoPay on the client’s account. |
| `first_payment_amount_subtotal` | `Float` | Optional | The subtotal of the amount that the client is to be charged when signing up for the contract. |
| `first_payment_amount_tax` | `Float` | Optional | The amount of tax that the client is to be charged when signing up for the contract. |
| `first_payment_amount_total` | `Float` | Optional | The total amount that the client is to be charged when signing up for the contract. |
| `recurring_payment_amount_subtotal` | `Float` | Optional | The subtotal amount that the client is to be charged on an ongoing basis. |
| `recurring_payment_amount_tax` | `Float` | Optional | The amount of tax the client is to be charged on an ongoing basis. |
| `recurring_payment_amount_total` | `Float` | Optional | The total amount that the client is to be charged on an ongoing basis. |
| `total_contract_amount_subtotal` | `Float` | Optional | The subtotal amount that the client is to be charged over the lifespan of the contract. |
| `total_contract_amount_tax` | `Float` | Optional | The total amount of tax the client is to be charged over the lifespan of the contract. |
| `total_contract_amount_total` | `Float` | Optional | The total amount the client is to be charged over the lifespan of the contract. |
| `promo_payment_amount_subtotal` | `Float` | Optional | Subtotal promotional period |
| `promo_payment_amount_tax` | `Float` | Optional | Taxes of promotional period |
| `promo_payment_amount_total` | `Float` | Optional | Total of promotional period |
| `number_of_promo_autopays` | `Integer` | Optional | Number of times that the AutoPay runs under the promotional period |

## Example (as JSON)

```json
{
  "Id": 170,
  "Name": "Name8",
  "Description": "Description2",
  "AssignsMembershipId": 46,
  "AssignsMembershipName": "AssignsMembershipName8"
}
```

