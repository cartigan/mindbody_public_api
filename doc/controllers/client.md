# Client

```ruby
client_controller = client.client
```

## Class Name

`ClientController`

## Methods

* [Get Active Client Memberships](../../doc/controllers/client.md#get-active-client-memberships)
* [Get Active Clients Memberships](../../doc/controllers/client.md#get-active-clients-memberships)
* [Get Client Account Balances](../../doc/controllers/client.md#get-client-account-balances)
* [Get Client Complete Info](../../doc/controllers/client.md#get-client-complete-info)
* [Get Client Contracts](../../doc/controllers/client.md#get-client-contracts)
* [Get Direct Debit Info](../../doc/controllers/client.md#get-direct-debit-info)
* [Delete Direct Debit Info](../../doc/controllers/client.md#delete-direct-debit-info)
* [Get Client Duplicates](../../doc/controllers/client.md#get-client-duplicates)
* [Get Client Formula Notes](../../doc/controllers/client.md#get-client-formula-notes)
* [Get Client Indexes](../../doc/controllers/client.md#get-client-indexes)
* [Get Client Purchases](../../doc/controllers/client.md#get-client-purchases)
* [Get Client Referral Types](../../doc/controllers/client.md#get-client-referral-types)
* [Get Client Rewards](../../doc/controllers/client.md#get-client-rewards)
* [Update Client Rewards](../../doc/controllers/client.md#update-client-rewards)
* [Get Clients](../../doc/controllers/client.md#get-clients)
* [Get Client Schedule](../../doc/controllers/client.md#get-client-schedule)
* [Get Client Services](../../doc/controllers/client.md#get-client-services)
* [Get Client Visits](../../doc/controllers/client.md#get-client-visits)
* [Get Contact Logs](../../doc/controllers/client.md#get-contact-logs)
* [Get Contact Log Types](../../doc/controllers/client.md#get-contact-log-types)
* [Get Cross Regional Client Associations](../../doc/controllers/client.md#get-cross-regional-client-associations)
* [Get Custom Client Fields](../../doc/controllers/client.md#get-custom-client-fields)
* [Get Required Client Fields](../../doc/controllers/client.md#get-required-client-fields)
* [Add Arrival](../../doc/controllers/client.md#add-arrival)
* [Add Client](../../doc/controllers/client.md#add-client)
* [Add Client Direct Debit Info](../../doc/controllers/client.md#add-client-direct-debit-info)
* [Add Formula Note](../../doc/controllers/client.md#add-formula-note)
* [Add Contact Log](../../doc/controllers/client.md#add-contact-log)
* [Merge Client](../../doc/controllers/client.md#merge-client)
* [Send Auto Email](../../doc/controllers/client.md#send-auto-email)
* [Send Password Reset Email](../../doc/controllers/client.md#send-password-reset-email)
* [Suspend Contract](../../doc/controllers/client.md#suspend-contract)
* [Terminate Contract](../../doc/controllers/client.md#terminate-contract)
* [Update Client](../../doc/controllers/client.md#update-client)
* [Update Client Contract Autopays](../../doc/controllers/client.md#update-client-contract-autopays)
* [Update Client Service](../../doc/controllers/client.md#update-client-service)
* [Update Client Visit](../../doc/controllers/client.md#update-client-visit)
* [Update Contact Log](../../doc/controllers/client.md#update-contact-log)
* [Upload Client Document](../../doc/controllers/client.md#upload-client-document)
* [Upload Client Photo](../../doc/controllers/client.md#upload-client-photo)
* [Delete Client Formula Note](../../doc/controllers/client.md#delete-client-formula-note)
* [Delete Contact Log](../../doc/controllers/client.md#delete-contact-log)


# Get Active Client Memberships

Please note that client memberships with location restrictions can only be used to pay for scheduled services at the site to which they belong. Memberships with location restrictions can not be used to pay for scheduled services at other sites within an organization.

```ruby
def get_active_client_memberships(version,
                                  request_client_id,
                                  site_id,
                                  authorization: nil,
                                  request_client_associated_sites_offset: nil,
                                  request_cross_regional_lookup: nil,
                                  request_limit: nil,
                                  request_location_id: nil,
                                  request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the client for whom memberships are returned. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | Used to retrieve a client’s memberships from multiple sites within an organization when the client is associated with more than ten sites. To change which ten sites are searched, change this offset value. A value of 0 means that no sites are skipped and the first ten sites are returned. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that you must always have `CrossRegionalLookup` set to `true` to use this parameter.<br /><br>Default: **0**<br><br>For example, if a client is associated with 25 sites, you need to call GET `ActiveClientMemberships` three times, as follows:<br><br>* Use GET `CrossRegionalClientAssociations` to determine how many sites a client is associated with, which tells you how many additional calls you need to make.<br>* Either omit `ClientAssociatedSitesOffset` or set it to 0 to return the client’s memberships from sites 1-10<br>* Set `ClientAssociatedSitesOffset` to 10 to return the client’s memberships from sites 11-20<br>* Set `ClientAssociatedSitesOffset` to 20 to return the client’s memberships from sites 21-25 |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | Used to retrieve a client’s memberships from multiple sites within an organization. When included and set to `true`, it searches a maximum of ten sites with which this client is associated. When a client is associated with more than ten sites, use `ClientAssociatedSitesOffset` as many times as needed to search the additional sites with which the client is associated. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that a `SiteID` is returned and populated in the `ClientServices` response when `CrossRegionalLookup` is set to `true`.<br>Default: **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | Filters results to memberships that can be used to pay for scheduled services at that location. This parameter can not be passed when `CrossRegionalLookup` is `true`. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetActiveClientMembershipsResponse`](../../doc/models/get-active-client-memberships-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_client_associated_sites_offset = 146

request_cross_regional_lookup = false

request_limit = 62

request_location_id = 90

request_offset = 100

result = client_controller.get_active_client_memberships(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset
)
```


# Get Active Clients Memberships

The endpoint returns a list of memberships for multiple clients we pass in query parameter. Please note that clients memberships with location restrictions can only be used to pay for scheduled services at the site to which they belong. Memberships with location restrictions can not be used to pay for scheduled services at other sites within an organization.

```ruby
def get_active_clients_memberships(version,
                                   request_client_ids,
                                   site_id,
                                   authorization: nil,
                                   request_client_associated_sites_offset: nil,
                                   request_cross_regional_lookup: nil,
                                   request_limit: nil,
                                   request_location_id: nil,
                                   request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_ids` | `Array<String>` | Query, Required | The ID of the client for whom memberships are returned. Maximum allowed : 200. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | Used to retrieve a client’s memberships from multiple sites within an organization when the client is associated with more than ten sites. To change which ten sites are searched, change this offset value. A value of 0 means that no sites are skipped and the first ten sites are returned. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that you must always have `CrossRegionalLookup` set to `true` to use this parameter.<br /><br>Default: **0**<br><br>For example, if a client is associated with 25 sites, you need to call `GetClientServices` three times, as follows:<br><br>* Use `GET CrossRegionalClientAssociations` to determine how many sites a client is associated with, which tells you how many additional calls you need to make.<br>* Either omit `ClientAssociatedSitesOffset` or set it to 0 to return the client’s services (pricing options) from sites 1-10.<br>* Set `ClientAssociatedSitesOffset` to 10 to return the client pricing options from sites 11-20<br>* Set `ClientAssociatedSitesOffset` to 20 to return the client pricing options from sites 21-25 |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | Used to retrieve a client’s memberships from multiple sites within an organization. When included and set to `true`, it searches a maximum of ten sites with which this client is associated. When a client is associated with more than ten sites, use `ClientAssociatedSitesOffset` as many times as needed to search the additional sites with which the client is associated. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that a `SiteID` is returned and populated in the `ClientServices` response when `CrossRegionalLookup` is set to `true`.<br>Default: **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | Filters results to memberships that can be used to pay for scheduled services at that location. This parameter can not be passed when `CrossRegionalLookup` is `true`. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetActiveClientsMembershipsResponse`](../../doc/models/get-active-clients-memberships-response.md)

## Example Usage

```ruby
version = '6'

request_client_ids = [
  'request.clientIds9',
  'request.clientIds0',
  'request.clientIds1'
]

site_id = '-99'

authorization = 'authorization6'

request_client_associated_sites_offset = 146

request_cross_regional_lookup = false

request_limit = 62

request_location_id = 90

request_offset = 100

result = client_controller.get_active_clients_memberships(
  version,
  request_client_ids,
  site_id,
  authorization: authorization,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset
)
```


# Get Client Account Balances

Get account balance information for one or more client(s).

```ruby
def get_client_account_balances(version,
                                request_client_ids,
                                site_id,
                                authorization: nil,
                                request_balance_date: nil,
                                request_class_id: nil,
                                request_limit: nil,
                                request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_ids` | `Array<String>` | Query, Required | The list of clients IDs for which you want account balances. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_balance_date` | `DateTime` | Query, Optional | The date you want a balance relative to.<br>Default: **the current date** |
| `request_class_id` | `Integer` | Query, Optional | The class ID of the event for which you want a balance. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetClientAccountBalancesResponse`](../../doc/models/get-client-account-balances-response.md)

## Example Usage

```ruby
version = '6'

request_client_ids = [
  'request.clientIds9',
  'request.clientIds0',
  'request.clientIds1'
]

site_id = '-99'

authorization = 'authorization6'

request_balance_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_class_id = 206

request_limit = 62

request_offset = 100

result = client_controller.get_client_account_balances(
  version,
  request_client_ids,
  site_id,
  authorization: authorization,
  request_balance_date: request_balance_date,
  request_class_id: request_class_id,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Client Complete Info

This endpoint returns complete client information along with list of purchased services, contract details, membership details and arrival programs for a specific client.

```ruby
def get_client_complete_info(version,
                             request_client_id,
                             site_id,
                             authorization: nil,
                             consumer_identity_token: nil,
                             request_client_associated_sites_offset: nil,
                             request_cross_regional_lookup: nil,
                             request_end_date: nil,
                             request_exclude_inactive_sites: nil,
                             request_required_client_data: nil,
                             request_show_active_only: nil,
                             request_start_date: nil,
                             request_use_activate_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | Filters results to client with these ID. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `consumer_identity_token` | `String` | Header, Optional | A consumers authorization token to replace the need of clientId in the request. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | Used to retrieve a client’s pricing options from multiple sites within an organization when the client is associated with more than ten sites. To change which ten sites are searched, change this offset value. A value of 0 means that no sites are skipped and the first ten sites are returned. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that you must always have `CrossRegionalLookup` set to `true` to use this parameter.<br /><br>Default: **0**<br><br>For example, if a client is associated with 25 sites, you need to call `GetClientServices` three times, as follows:<br><br>* Use `GET CrossRegionalClientAssociations` to determine how many sites a client is associated with, which tells you how many additional calls you need to make.<br>* Either omit `ClientAssociatedSitesOffset` or set it to 0 to return the client’s services (pricing options) from sites 1-10.<br>* Set `ClientAssociatedSitesOffset` to 10 to return the client pricing options from sites 11-20<br>* Set `ClientAssociatedSitesOffset` to 20 to return the client pricing options from sites 21-25 |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | Used to retrieve a clients pricing options from multiple sites within an organization.When included and set to `true`,<br>it searches a maximum of ten sites with which this client is associated.When a client is associated with more than ten sites, use `ClientAssociatedSitesOffset` as many times as needed to search the additional sites with which the client is associated.<br>You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with.<br>Note that a `SiteID` is returned and populated in the `ClientServices` response when `CrossRegionalLookup` is set to `true`.<br>Default: **false** |
| `request_end_date` | `DateTime` | Query, Optional | Filters results to pricing options that are purchased on or before this date.<br>Default: **today’s date**. |
| `request_exclude_inactive_sites` | `TrueClass \| FalseClass` | Query, Optional | Used to exclude inactive and deleted sites from the results |
| `request_required_client_data` | `Array<String>` | Query, Optional | Used to retrieve list of purchased services, contract details, membership details and arrival programs for a specific client.<br>Default `ClientServices`, `ClientContracts`, `ClientMemberships` and `ClientArrivals` will be returned when `RequiredClientDatais` not set.<br>When `RequiredClientData` is set to `Contracts` then only `ClientContracts` will be returned in the response.<br>When `RequiredClientData` is set to Services then only `ClientServices` will be returned in the response.<br>When `RequiredClientData` is set to `Memberships` then only `ClientMemberships` will be returned in the response.<br>When `RequiredClientData` is set to `ArrivalPrograms` then only `ClientArrivals` will be returned in the response. |
| `request_show_active_only` | `TrueClass \| FalseClass` | Query, Optional | (optional) A filter on showing active services only. Set this field to 'true' when trying to determine if a client has a<br>service can pay for a class or appointment. |
| `request_start_date` | `DateTime` | Query, Optional | Filters results to pricing options that are purchased on or after this date.<br>Default: **today’s date**. |
| `request_use_activate_date` | `TrueClass \| FalseClass` | Query, Optional | (optional) When this flag is set to true the date filtering will use activate date to filter the pricing options<br>When this flag is set to false the date filtering will use purchase date to filter the pricing options |

## Response Type

[`GetClientCompleteInfoResponse`](../../doc/models/get-client-complete-info-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

consumer_identity_token = 'consumer-identity-token6'

request_client_associated_sites_offset = 146

request_cross_regional_lookup = false

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_exclude_inactive_sites = false

request_required_client_data = [
  'request.requiredClientData4',
  'request.requiredClientData5'
]

request_show_active_only = false

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_use_activate_date = false

result = client_controller.get_client_complete_info(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  consumer_identity_token: consumer_identity_token,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_end_date: request_end_date,
  request_exclude_inactive_sites: request_exclude_inactive_sites,
  request_required_client_data: request_required_client_data,
  request_show_active_only: request_show_active_only,
  request_start_date: request_start_date,
  request_use_activate_date: request_use_activate_date
)
```


# Get Client Contracts

Get contracts that a client has purchased.

```ruby
def get_client_contracts(version,
                         request_client_id,
                         site_id,
                         authorization: nil,
                         request_client_associated_sites_offset: nil,
                         request_cross_regional_lookup: nil,
                         request_limit: nil,
                         request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the client (RssId). |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | Determines how many sites are skipped over when retrieving a client’s cross regional contracts. Used when a client ID is linked to more than ten sites in an organization. Only a maximum of ten site databases are queried when this call is made and `CrossRegionalLookup` is set to `true`. To change which sites are queried, change this offset value.<br>Default: **0** |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that the requesting client’s cross regional contracts are returned, if any.<br /><br>When `false`, indicates that cross regional contracts are not returned. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetClientContractsResponse`](../../doc/models/get-client-contracts-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_client_associated_sites_offset = 146

request_cross_regional_lookup = false

request_limit = 62

request_offset = 100

result = client_controller.get_client_contracts(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Direct Debit Info

This endpoint returns direct debit info stored on a client's account. This endpoint requires staff user credentials.

A null response from this endpoint indicates that the client has no usable direct debit information on their account.Use the POST AddClientDirectDebitInfo endpoint to add direct debit information to a client’s account.

```ruby
def get_direct_debit_info(version,
                          site_id,
                          authorization: nil,
                          client_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `client_id` | `String` | Query, Optional | The ID of the client. |

## Response Type

[`DirectDebitInfo`](../../doc/models/direct-debit-info.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

client_id = 'clientId6'

result = client_controller.get_direct_debit_info(
  version,
  site_id,
  authorization: authorization,
  client_id: client_id
)
```


# Delete Direct Debit Info

This endpoint deletes direct debit info from a client’s account. This endpoint requires staff user credentials.

```ruby
def delete_direct_debit_info(version,
                             site_id,
                             authorization: nil,
                             client_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `client_id` | `String` | Query, Optional | The ID of the client. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

client_id = 'clientId6'

result = client_controller.delete_direct_debit_info(
  version,
  site_id,
  authorization: authorization,
  client_id: client_id
)
```


# Get Client Duplicates

This endpoint gets client records that would be considered duplicates based on case-insensitive matching of the client’s first name, last name, and email. For there to be results, all three parameters must match a client record. This endpoint requires staff user credentials.

An empty `ClientDuplicates` object in the response from this endpoint indicates that there were no client records found that match the first name, last name, and email fields passed in.

If one client record is returned, it is not a duplicate itself, but no other client record can be created or updated that would match this client’s first name, last name, and email combination.

If more than one client record is returned, these clients are duplicates of each other.We recommend discussing with the business how they would like to resolve duplicate records in the event the response contains more than one client record.Businesses can use the Merge Duplicate Clients tool in the Core Business Mode software to resolve the duplicate client records.

```ruby
def get_client_duplicates(version,
                          site_id,
                          authorization: nil,
                          request_email: nil,
                          request_first_name: nil,
                          request_last_name: nil,
                          request_limit: nil,
                          request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_email` | `String` | Query, Optional | The client email to match on when searching for duplicates. |
| `request_first_name` | `String` | Query, Optional | The client first name to match on when searching for duplicates. |
| `request_last_name` | `String` | Query, Optional | The client last name to match on when searching for duplicates. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetClientDuplicatesResponse`](../../doc/models/get-client-duplicates-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_email = 'request.email4'

request_first_name = 'request.firstName8'

request_last_name = 'request.lastName8'

request_limit = 62

request_offset = 100

result = client_controller.get_client_duplicates(
  version,
  site_id,
  authorization: authorization,
  request_email: request_email,
  request_first_name: request_first_name,
  request_last_name: request_last_name,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Client Formula Notes

***QueryParams***: Enables to retrieve cross regional formula notes for a client, or for a specific appointment. The two parameters are optional, however at least one must be provided. This endpoint supports pagination.

```ruby
def get_client_formula_notes(version,
                             site_id,
                             authorization: nil,
                             request_appointment_id: nil,
                             request_client_id: nil,
                             request_limit: nil,
                             request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_appointment_id` | `Integer` | Query, Optional | The appointment ID of an appointment in the studio specified in the header of the request. |
| `request_client_id` | `String` | Query, Optional | The client ID of the client whose formula notes are being requested. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetClientFormulaNotesResponse`](../../doc/models/get-client-formula-notes-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_appointment_id = 194

request_client_id = 'request.clientId2'

request_limit = 62

request_offset = 100

result = client_controller.get_client_formula_notes(
  version,
  site_id,
  authorization: authorization,
  request_appointment_id: request_appointment_id,
  request_client_id: request_client_id,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Client Indexes

Client indexes are used to analyze client demographics. A business owner can set up different categories with sets of values which they can assign to each client. Client indexes are used in client searches, for tagging clients so that the owner can send mass emails to similar groups, and for many reports.

For more information, see Client Indexes and [Client Index Values (video tutorial)](https://support.mindbodyonline.com/s/article/203261653-Client-indexes-and-client-index-values-video-tutorial?language=en_USclient).

```ruby
def get_client_indexes(version,
                       site_id,
                       authorization: nil,
                       request_required_only: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_required_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, filters the results to only indexes that are required on creation.<br /><br>When `false` or omitted, returns all of the client indexes. |

## Response Type

[`GetClientIndexesResponse`](../../doc/models/get-client-indexes-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_required_only = false

result = client_controller.get_client_indexes(
  version,
  site_id,
  authorization: authorization,
  request_required_only: request_required_only
)
```


# Get Client Purchases

Gets a list of purchases made by a specific client.

```ruby
def get_client_purchases(version,
                         request_client_id,
                         site_id,
                         authorization: nil,
                         request_end_date: nil,
                         request_limit: nil,
                         request_offset: nil,
                         request_sale_id: nil,
                         request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the client you are querying for purchases. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | Filters results to purchases made before this timestamp.<br /><br>Default: **end of today** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_sale_id` | `Integer` | Query, Optional | Filters results to the single record associated with this ID. |
| `request_start_date` | `DateTime` | Query, Optional | Filters results to purchases made on or after this timestamp.<br /><br>Default: **now** |

## Response Type

[`GetClientPurchasesResponse`](../../doc/models/get-client-purchases-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_sale_id = 32

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = client_controller.get_client_purchases(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_sale_id: request_sale_id,
  request_start_date: request_start_date
)
```


# Get Client Referral Types

Gets a list of referral types. Referral types are options that new clients can choose to identify how they learned about the business. Referral types are typically used for the sign-up process.

```ruby
def get_client_referral_types(version,
                              site_id,
                              authorization: nil,
                              request_include_inactive: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_include_inactive` | `TrueClass \| FalseClass` | Query, Optional | When `true`, filters the results to include subtypes and inactive referral types.<br /><br>When `false`, includes no subtypes and only active types.<br>Default:**false** |

## Response Type

[`GetClientReferralTypesResponse`](../../doc/models/get-client-referral-types-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_include_inactive = false

result = client_controller.get_client_referral_types(
  version,
  site_id,
  authorization: authorization,
  request_include_inactive: request_include_inactive
)
```


# Get Client Rewards

Gets the client rewards.

```ruby
def get_client_rewards(version,
                       request_client_id,
                       site_id,
                       authorization: nil,
                       request_end_date: nil,
                       request_limit: nil,
                       request_offset: nil,
                       request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the client. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | The end date of transaction.<br>Default: **StartDate** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_start_date` | `DateTime` | Query, Optional | The start date of transaction.<br>Default: **today** |

## Response Type

[`GetClientRewardsResponse`](../../doc/models/get-client-rewards-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = client_controller.get_client_rewards(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_start_date: request_start_date
)
```


# Update Client Rewards

Earns or redeems rewards points for a given client, based on site settings. Cross regional rewards are not supported at this time.

```ruby
def update_client_rewards(version,
                          request,
                          site_id,
                          authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateClientRewardsRequest`](../../doc/models/update-client-rewards-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetClientRewardsResponse`](../../doc/models/get-client-rewards-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateClientRewardsRequest.new(
  'ClientId0',
  10,
  'Action6',
  'Source6',
  112,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.update_client_rewards(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Get Clients

This endpoint requires staff user credentials. This endpoint supports pagination. See Pagination for a description of the Pagination information.

```ruby
def get_clients(version,
                site_id,
                authorization: nil,
                request_client_i_ds: nil,
                request_include_inactive: nil,
                request_is_prospect: nil,
                request_last_modified_date: nil,
                request_limit: nil,
                request_offset: nil,
                request_search_text: nil,
                request_unique_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_i_ds` | `Array<String>` | Query, Optional | The requested client IDs.<br>Default: **all IDs** that the authenticated user’s access level allows.<br /><br>Note: You can fetch information for maximum 20 clients at once. |
| `request_include_inactive` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates the results to include active and inactive clients.<br /><br>When `false`, indicates that only those clients who are marked as active should be returned.<br>Default: **false** |
| `request_is_prospect` | `TrueClass \| FalseClass` | Query, Optional | When `true`, filters the results to include only those clients marked as prospects for the business.<br /><br>When `false`, indicates that only those clients who are not marked prospects should be returned. |
| `request_last_modified_date` | `DateTime` | Query, Optional | Filters the results to include only the clients that have been modified on or after this date. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_search_text` | `String` | Query, Optional | Text to use in the search. Can include FirstName, LastName, and Email. Note that user credentials must be provided. |
| `request_unique_ids` | `Array<Integer>` | Query, Optional | Filters results to clients with these `UniqueIDs`. This parameter cannot be used with `ClientIDs` or `SearchText`.<br>Default: **all UniqueIDs** that the authenticated user’s access level allows. |

## Response Type

[`GetClientsResponse`](../../doc/models/get-clients-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_client_i_ds = [
  'request.clientIDs9',
  'request.clientIDs0',
  'request.clientIDs1'
]

request_include_inactive = false

request_is_prospect = false

request_last_modified_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_search_text = 'request.searchText0'

request_unique_ids = [
  123,
  124,
  125
]

result = client_controller.get_clients(
  version,
  site_id,
  authorization: authorization,
  request_client_i_ds: request_client_i_ds,
  request_include_inactive: request_include_inactive,
  request_is_prospect: request_is_prospect,
  request_last_modified_date: request_last_modified_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_search_text: request_search_text,
  request_unique_ids: request_unique_ids
)
```


# Get Client Schedule

This endpoint can be utilized to retrieve scheduled visits which is associated with the requested client.

```ruby
def get_client_schedule(version,
                        request_client_id,
                        site_id,
                        authorization: nil,
                        request_client_associated_sites_offset: nil,
                        request_cross_regional_lookup: nil,
                        request_end_date: nil,
                        request_limit: nil,
                        request_offset: nil,
                        request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the requested client. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | The number of sites to skip when returning the site associated with a client. |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that past and scheduled client visits across all sites in the region are returned.<br>When `false`, indicates that only visits at the current site are returned. |
| `request_end_date` | `DateTime` | Query, Optional | The date past which class visits are not returned.<br>Default is today’s date |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_start_date` | `DateTime` | Query, Optional | The date before which class visits are not returned.<br>Default is the end date |

## Response Type

[`GetClientScheduleResponse`](../../doc/models/get-client-schedule-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_client_associated_sites_offset = 146

request_cross_regional_lookup = false

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = client_controller.get_client_schedule(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_start_date: request_start_date
)
```


# Get Client Services

Get pricing options that a client has purchased.

```ruby
def get_client_services(version,
                        request_client_id,
                        site_id,
                        authorization: nil,
                        request_class_id: nil,
                        request_client_associated_sites_offset: nil,
                        request_client_ids: nil,
                        request_cross_regional_lookup: nil,
                        request_end_date: nil,
                        request_ignore_cross_regional_site_limit: nil,
                        request_limit: nil,
                        request_location_ids: nil,
                        request_offset: nil,
                        request_program_ids: nil,
                        request_session_type_id: nil,
                        request_show_active_only: nil,
                        request_start_date: nil,
                        request_use_activate_date: nil,
                        request_visit_count: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the client to query. The results are a list of pricing options that the client has purchased. Note that “service” and “pricing option” are synonymous in this section of the documentation. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_class_id` | `Integer` | Query, Optional | Filters results to only those pricing options that can be used to pay for this class. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | Used to retrieve a client’s pricing options from multiple sites within an organization when the client is associated with more than ten sites. To change which ten sites are searched, change this offset value. A value of 0 means that no sites are skipped and the first ten sites are returned. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that you must always have `CrossRegionalLookup` set to `true` to use this parameter.<br /><br>Default: **0**<br><br>For example, if a client is associated with 25 sites, you need to call `GetClientServices` three times, as follows:<br><br>* Use `GET CrossRegionalClientAssociations` to determine how many sites a client is associated with, which tells you how many additional calls you need to make.<br>* Either omit `ClientAssociatedSitesOffset` or set it to 0 to return the client’s services (pricing options) from sites 1-10.<br>* Set `ClientAssociatedSitesOffset` to 10 to return the client pricing options from sites 11-20<br>* Set `ClientAssociatedSitesOffset` to 20 to return the client pricing options from sites 21-25 |
| `request_client_ids` | `Array<String>` | Query, Optional | The IDs of the clients to query. The results are a list of pricing options that the clients have purchased.<br>ClientId parameter takes priority over ClientIds due to backward compatibility.<br>So if you want to use ClientIds, then ClientId needs to be empty.<br>Either of ClientId or ClientIds need to be specified |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | Used to retrieve a client’s pricing options from multiple sites within an organization. When included and set to `true`, it searches a maximum of ten sites with which this client is associated. When a client is associated with more than ten sites, use `ClientAssociatedSitesOffset` as many times as needed to search the additional sites with which the client is associated. You can use the `CrossRegionalClientAssociations` value from `GET CrossRegionalClientAssociations` to determine how many sites the client is associated with. Note that a `SiteID` is returned and populated in the `ClientServices` response when `CrossRegionalLookup` is set to `true`.<br>Default: **false** |
| `request_end_date` | `DateTime` | Query, Optional | Filters results to pricing options that are purchased on or before this date.<br>Default: **today’s date** |
| `request_ignore_cross_regional_site_limit` | `TrueClass \| FalseClass` | Query, Optional | Used to specify if the number of cross regional sites used to search for client’s pricing options should be ignored.<br>Default: **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | Filters results to pricing options that can be used at the listed location IDs. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_program_ids` | `Array<Integer>` | Query, Optional | Filters results to pricing options that belong to one of the given program IDs. |
| `request_session_type_id` | `Integer` | Query, Optional | Filters results to pricing options that will pay for the given session type ID. Use this to find pricing options that will pay for a specific appointment type. |
| `request_show_active_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, includes active services only.<br>Default: **false** |
| `request_start_date` | `DateTime` | Query, Optional | Filters results to pricing options that are purchased on or after this date.<br>Default: **today’s date** |
| `request_use_activate_date` | `TrueClass \| FalseClass` | Query, Optional | When this flag is set to true the date filtering will use activate date to filter the pricing options<br>When this flag is set to false the date filtering will use purchase date to filter the pricing options [ Existing logic ] |
| `request_visit_count` | `Integer` | Query, Optional | A filter on the minimum number of visits a service can pay for. |

## Response Type

[`GetClientServicesResponse`](../../doc/models/get-client-services-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_class_id = 206

request_client_associated_sites_offset = 146

request_client_ids = [
  'request.clientIds9',
  'request.clientIds0',
  'request.clientIds1'
]

request_cross_regional_lookup = false

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_ignore_cross_regional_site_limit = false

request_limit = 62

request_location_ids = [
  192
]

request_offset = 100

request_program_ids = [
  91,
  92,
  93
]

request_session_type_id = 100

request_show_active_only = false

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_use_activate_date = false

request_visit_count = 18

result = client_controller.get_client_services(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_class_id: request_class_id,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_client_ids: request_client_ids,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_end_date: request_end_date,
  request_ignore_cross_regional_site_limit: request_ignore_cross_regional_site_limit,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_program_ids: request_program_ids,
  request_session_type_id: request_session_type_id,
  request_show_active_only: request_show_active_only,
  request_start_date: request_start_date,
  request_use_activate_date: request_use_activate_date,
  request_visit_count: request_visit_count
)
```


# Get Client Visits

Gets the Client Visits for a specific client.

```ruby
def get_client_visits(version,
                      request_client_id,
                      site_id,
                      authorization: nil,
                      request_client_associated_sites_offset: nil,
                      request_cross_regional_lookup: nil,
                      request_end_date: nil,
                      request_limit: nil,
                      request_offset: nil,
                      request_start_date: nil,
                      request_unpaids_only: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the requested client. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_associated_sites_offset` | `Integer` | Query, Optional | The number of sites to skip when returning the site associated with a client. |
| `request_cross_regional_lookup` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that past and scheduled client visits across all sites in the region are returned.<br /><br>When `false`, indicates that only visits at the current site are returned. |
| `request_end_date` | `DateTime` | Query, Optional | The date past which class visits are not returned.<br>Default: **today’s date** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_start_date` | `DateTime` | Query, Optional | The date before which class visits are not returned.<br>Default: **the end date** |
| `request_unpaids_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that only visits that have not been paid for are returned.<br /><br>When `false`, indicates that all visits are returned, regardless of whether they have been paid for.<br /><br>Default: **false** |

## Response Type

[`GetClientVisitsResponse`](../../doc/models/get-client-visits-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_client_associated_sites_offset = 146

request_cross_regional_lookup = false

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_unpaids_only = false

result = client_controller.get_client_visits(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_client_associated_sites_offset: request_client_associated_sites_offset,
  request_cross_regional_lookup: request_cross_regional_lookup,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_start_date: request_start_date,
  request_unpaids_only: request_unpaids_only
)
```


# Get Contact Logs

This endpoint contains a variety of filters that can return not just all contact logs, but also system-generated contact logs, contact logs assigned to specific staff members, and contact logs of specific types or subtypes.

```ruby
def get_contact_logs(version,
                     request_client_id,
                     site_id,
                     authorization: nil,
                     request_end_date: nil,
                     request_limit: nil,
                     request_offset: nil,
                     request_show_system_generated: nil,
                     request_staff_ids: nil,
                     request_start_date: nil,
                     request_subtype_ids: nil,
                     request_type_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The ID of the client whose contact logs are being requested. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | Filters the results to contact logs created before this date.<br /><br>Default: **the start date** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_show_system_generated` | `TrueClass \| FalseClass` | Query, Optional | When `true`, system-generated contact logs are returned in the results.<br /><br>Default: **false** |
| `request_staff_ids` | `Array<Integer>` | Query, Optional | Filters the results to return contact logs assigned to one or more staff IDs. |
| `request_start_date` | `DateTime` | Query, Optional | Filters the results to contact logs created on or after this date.<br /><br>Default: **the current date** |
| `request_subtype_ids` | `Array<Integer>` | Query, Optional | Filters the results to contact logs assigned one or more of these subtype IDs. |
| `request_type_ids` | `Array<Integer>` | Query, Optional | Filters the results to contact logs assigned one or more of these type IDs. |

## Response Type

[`GetContactLogsResponse`](../../doc/models/get-contact-logs-response.md)

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_show_system_generated = false

request_staff_ids = [
  23,
  24,
  25
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_subtype_ids = [
  141
]

request_type_ids = [
  63
]

result = client_controller.get_contact_logs(
  version,
  request_client_id,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_show_system_generated: request_show_system_generated,
  request_staff_ids: request_staff_ids,
  request_start_date: request_start_date,
  request_subtype_ids: request_subtype_ids,
  request_type_ids: request_type_ids
)
```


# Get Contact Log Types

This endpoint contains a variety of filters that can return not just all contact logs, but also system-generated contact logs, contact logs assigned to specific staff members, and contact logs of specific types or subtypes.

```ruby
def get_contact_log_types(version,
                          site_id,
                          authorization: nil,
                          request_contact_log_type_id: nil,
                          request_limit: nil,
                          request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_contact_log_type_id` | `Integer` | Query, Optional | The requested ContactLogType ID.<br>Default: **all** IDs that the authenticated user’s access level allows. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetContactLogTypesResponse`](../../doc/models/get-contact-log-types-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_contact_log_type_id = 24

request_limit = 62

request_offset = 100

result = client_controller.get_contact_log_types(
  version,
  site_id,
  authorization: authorization,
  request_contact_log_type_id: request_contact_log_type_id,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Cross Regional Client Associations

Returns a list of sites that a particular client ID (also referred to as an RSSID) or a client email address is associated with in a cross-regional organization. Either the `ClientID` or `Email` parameter is required. If both are provided, the `ClientID` is used.

Use this endpoint to retrieve information for other Public API endpoints, about the same client at multiple sites within an organization. To use this endpoint, your developer account must have been granted permission to the site’s entire organization.

Note that this endpoint does not work on the Developer Sandbox site, as it is not set up for cross-regional use cases.

```ruby
def get_cross_regional_client_associations(version,
                                           site_id,
                                           authorization: nil,
                                           request_client_id: nil,
                                           request_email: nil,
                                           request_first_name: nil,
                                           request_last_name: nil,
                                           request_limit: nil,
                                           request_offset: nil,
                                           request_v2: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_id` | `String` | Query, Optional | Looks up the cross regional associations by the client’s ID. Either `ClientId` or `Email` must be provided. If both are provided, the `ClientId` is used by default. |
| `request_email` | `String` | Query, Optional | Looks up the cross regional associations by the client’s email address. Either `ClientId` or `Email` must be provided. If both are provided, the `ClientId` is used by default. |
| `request_first_name` | `String` | Query, Optional | First name (used for email queries) |
| `request_last_name` | `String` | Query, Optional | Last name (used for email queries) |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_v_2` | `TrueClass \| FalseClass` | Query, Optional | Use newer method |

## Response Type

[`GetCrossRegionalClientAssociationsResponse`](../../doc/models/get-cross-regional-client-associations-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_client_id = 'request.clientId2'

request_email = 'request.email4'

request_first_name = 'request.firstName8'

request_last_name = 'request.lastName8'

request_limit = 62

request_offset = 100

request_v2 = false

result = client_controller.get_cross_regional_client_associations(
  version,
  site_id,
  authorization: authorization,
  request_client_id: request_client_id,
  request_email: request_email,
  request_first_name: request_first_name,
  request_last_name: request_last_name,
  request_limit: request_limit,
  request_offset: request_offset,
  request_v2: request_v2
)
```


# Get Custom Client Fields

Get a site's configured custom client fields.

```ruby
def get_custom_client_fields(version,
                             site_id,
                             authorization: nil,
                             request_limit: nil,
                             request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetCustomClientFieldsResponse`](../../doc/models/get-custom-client-fields-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

result = client_controller.get_custom_client_fields(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Required Client Fields

Gets the list of fields that a new client has to fill out in business mode, specifically for the sign-up process. `AddClient` and `UpdateClient` validate against these fields.

This endpoint has no query parameters.

```ruby
def get_required_client_fields(version,
                               site_id,
                               authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetRequiredClientFieldsResponse`](../../doc/models/get-required-client-fields-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = client_controller.get_required_client_fields(
  version,
  site_id,
  authorization: authorization
)
```


# Add Arrival

Marks a client as arrived for a specified location. A staff user token must be included with staff assigned the LaunchSignInScreen permission.

When used on a site that is part of a region, the following additional logic will apply:

* When a client exists within the region but not at the studio where the arrival is being logged, a local client record will be automatically created.
* If the local client does not have an applicable local membership or pricing option, a membership or pricing option will be automatically used if it exists elsewhere within the region.

```ruby
def add_arrival(version,
                request,
                site_id,
                authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddArrivalRequest`](../../doc/models/add-arrival-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddArrivalResponse`](../../doc/models/add-arrival-response.md)

## Example Usage

```ruby
version = '6'

request = AddArrivalRequest.new(
  'ClientId0',
  238,
  120,
  216,
  false
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.add_arrival(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Client

Starting the week of May 11th, 2020 all versions of the Public API will no longer allow duplicate clients to be created. This applies to both adding a client and updating a client record. A duplicate client is created when two profiles have the same first name, last name and email.<br />
Creates a new client record at the specified business.Passing a User Token as Authorization will create a client and respect Business Mode required fields.Omitting the token will create a client and respect Consumer Mode required fi elds. To make sure you are collecting all required pieces of information, first run GetRequired ClientFields.<br />
If you have purchased an Ultimate tier then this endpoint will automatically start showing new opportunity on Sales Pipeline.

```ruby
def add_client(version,
               request,
               site_id,
               authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddClientRequest`](../../doc/models/add-client-request.md) | Body, Required | The `FirstName` and `LastName` parameters are always required in this request.<br>All other parameters are optional, but note that any of the optional parameters could be required by a particular business,<br>depending on how the business has configured the site settings. If `GetRequiredClientFields` returns `EmergContact` in the list of required fields,<br>then all emergency contact parameters are required, which includes `EmergencyContactInfoEmail`, `EmergencyContactInfoName`, `EmergencyContactInfoPhone`, and `EmergencyContactInfoRelationship`. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddClientResponse`](../../doc/models/add-client-response.md)

## Example Usage

```ruby
version = '6'

request = AddClientRequest.new(
  'FirstName8',
  'LastName8',
  60.74,
  Action1Enum::ADDED,
  false,
  'AddressLine12',
  'AddressLine26'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.add_client(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Client Direct Debit Info

This endpoint adds direct debit info to a client’s account. This endpoint requires staff user credentials.

```ruby
def add_client_direct_debit_info(version,
                                 request,
                                 site_id,
                                 authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddClientDirectDebitInfoRequest`](../../doc/models/add-client-direct-debit-info-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddClientDirectDebitInfoResponse`](../../doc/models/add-client-direct-debit-info-response.md)

## Example Usage

```ruby
version = '6'

request = AddClientDirectDebitInfoRequest.new(
  false,
  'ClientId0',
  'NameOnAccount0',
  'RoutingNumber6',
  'AccountNumber0'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.add_client_direct_debit_info(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Formula Note

This endpoint adds a formula note for a specified client or specified client appointment. A staff user token must be included with staff assigned permission to view client profile or have both ViewAppointmentDetails and ModifyAppointment permissions.

```ruby
def add_formula_note(version,
                     request,
                     site_id,
                     authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddFormulaNoteRequest`](../../doc/models/add-formula-note-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`FormulaNoteResponse`](../../doc/models/formula-note-response.md)

## Example Usage

```ruby
version = '6'

request = AddFormulaNoteRequest.new(
  'ClientId0',
  'Note6',
  246
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.add_formula_note(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Contact Log

Add a contact log to a client's account.

```ruby
def add_contact_log(version,
                    request,
                    site_id,
                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddContactLogRequest`](../../doc/models/add-contact-log-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`ContactLog`](../../doc/models/contact-log.md)

## Example Usage

```ruby
version = '6'

request = AddContactLogRequest.new(
  'ClientId0',
  'ContactMethod0',
  202,
  'Text8',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'ContactName6',
  false
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.add_contact_log(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Merge Client

This endpoint helps to merge clients.

```ruby
def merge_client(version,
                 request,
                 site_id,
                 authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`MergeClientsRequest`](../../doc/models/merge-clients-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

request = MergeClientsRequest.new(
  120,
  110
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.merge_client(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Send Auto Email

This endpoint requires staff user credentials.

```ruby
def send_auto_email(version,
                    request,
                    site_id,
                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`SendAutoEmailRequest`](../../doc/models/send-auto-email-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

request = SendAutoEmailRequest.new(
  'ClientId0',
  'EmailType4'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.send_auto_email(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Send Password Reset Email

Send a password reset email to a client.

```ruby
def send_password_reset_email(version,
                              request,
                              site_id,
                              authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`SendPasswordResetEmailRequest`](../../doc/models/send-password-reset-email-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

request = SendPasswordResetEmailRequest.new(
  'UserEmail2',
  'UserFirstName2',
  'UserLastName8'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.send_password_reset_email(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Suspend Contract

Suspend client contract

```ruby
def suspend_contract(version,
                     request,
                     site_id,
                     authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`SuspendContractRequest`](../../doc/models/suspend-contract-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`SuspendContractResponse`](../../doc/models/suspend-contract-response.md)

## Example Usage

```ruby
version = '6'

request = SuspendContractRequest.new(
  'ClientId0',
  118,
  'SuspensionType0',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  224,
  102,
  false
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.suspend_contract(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Terminate Contract

This endpoint terminates a client contract. This endpoint requires staff user credentials with TerminateClientContract permission.

```ruby
def terminate_contract(version,
                       request,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`TerminateContractRequest`](../../doc/models/terminate-contract-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`TerminateContractResponse`](../../doc/models/terminate-contract-response.md)

## Example Usage

```ruby
version = '6'

request = TerminateContractRequest.new(
  'ClientId0',
  118,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'TerminationCode0',
  'TerminationComments8'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.terminate_contract(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Client

Starting the week of May 11th, 2020 all versions of the Public API will no longer allow duplicate clients to be created. This applies to both adding a client and updating a client record. A duplicate client is created when two profiles have the same first name, last name and email.<br />
Updates an existing client for a specific subscriber.Passing a User Token as Authorization respects Business Mode required fields.Omitting the token respects Consumer Mode required fields.To make sure you are collecting all required pieces of information, first run GetRequiredClientFields..Use this endpoint as follows:

* If you need to update the `ReferredBy` parameter, use this endpoint after calling `GET ClientReferralTypes`.
* When updating a client’s home location, use after calling `GET Locations`.
* If you are updating a client’s stored credit card, use after calling `GET AcceptedCardTypes` so that you can make sure the card is a type that is accepted at the subscriber.
  If this endpoint is used on a cross-regional site, passing in a client’s RSSID and email address creates a cross-regional link. This means that the client is created in cross-regional sites where the client does not exist and `GET CrossRegionalClientAssociations` returns all appropriate cross-regional sites. When `CrossRegionalUpdate` is omitted or set to `true`, the client’s updated information is propagated to all of the region’s sites. If `CrossRegionalUpdate` is set to `false`, only the local client is updated.

Note that the following items cannot be updated for a cross-regional client:

* `ClientIndexes`
* `ClientRelationships`
* `CustomClientFields`
* `SalesReps`
* `SendAccountEmails`
* `SendAccountTexts`
* `SendPromotionalEmails`
* `SendPromotionalTexts`
* `SendScheduleEmails`
* `SendScheduleTexts`
* `Gender` (for site custom values)

Custom client Gender options can only be created with non-cross-regional requests.

If you have purchased an Ultimate tier then this endpoint will automatically start showing a new opportunity on Sales Pipeline.It will create a new opportunity if the current request modify the contact as follows::

* You need to update the `IsProspect` parameter, to `true`.<br />
* You need to update the `ProspectStage`.`Description parameter`, to `New Lead`.<br />

Updates made to any inactive clients will automatically reactivate the client unless the `Acive` property is explicitly set to `false` in the request body.

```ruby
def update_client(version,
                  request,
                  site_id,
                  authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateClientRequest`](../../doc/models/update-client-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateClientResponse`](../../doc/models/update-client-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateClientRequest.new(
  ClientWithSuspensionInfo.new(
    ClientSuspensionInfo.new(
      false,
      'SuspensionStartDate8',
      'SuspensionEndDate2'
    ),
    AppointmentGenderPreference1Enum::NONE,
    DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    'Country8',
    DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  ),
  false,
  false,
  'NewId2',
  216
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.update_client(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Client Contract Autopays

This endpoint can be used to update the amount and/or the item of a client’s autopay schedule.

```ruby
def update_client_contract_autopays(version,
                                    request,
                                    site_id,
                                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateClientContractAutopaysRequest`](../../doc/models/update-client-contract-autopays-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`Contract`](../../doc/models/contract.md)

## Example Usage

```ruby
version = '6'

request = UpdateClientContractAutopaysRequest.new(
  118,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  136,
  56
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.update_client_contract_autopays(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Client Service

Updates the active date and/or expiration date of a client pricing option. This request requires staff user credentials. If the active date is modified, the expiration date is also modified accordingly. If the expiration date is modified, the active date is unchanged.

```ruby
def update_client_service(version,
                          request,
                          site_id,
                          authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateClientServiceRequest`](../../doc/models/update-client-service-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateClientServiceResponse`](../../doc/models/update-client-service-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateClientServiceRequest.new(
  130,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  242,
  false
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.update_client_service(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Client Visit

Updates the status of the specified visit.

```ruby
def update_client_visit(version,
                        request,
                        site_id,
                        authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateClientVisitRequest`](../../doc/models/update-client-visit-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateClientVisitResponse`](../../doc/models/update-client-visit-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateClientVisitRequest.new(
  92,
  false,
  false,
  244,
  'Execute2',
  false
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.update_client_visit(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Contact Log

Update a contact log on a client's account.

```ruby
def update_contact_log(version,
                       request,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateContactLogRequest`](../../doc/models/update-contact-log-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`ContactLog`](../../doc/models/contact-log.md)

## Example Usage

```ruby
version = '6'

request = UpdateContactLogRequest.new(
  178,
  false,
  202,
  'Text8',
  'ContactName6'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.update_contact_log(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Upload Client Document

Uploads a document file for a specific client. Returns a string representation of the image byte array. The maximum size file that can be uploaded is **4MB**.

```ruby
def upload_client_document(version,
                           request,
                           site_id,
                           authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UploadClientDocumentRequest`](../../doc/models/upload-client-document-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UploadClientDocumentResponse`](../../doc/models/upload-client-document-response.md)

## Example Usage

```ruby
version = '6'

request = UploadClientDocumentRequest.new(
  'ClientId0',
  ClientDocument.new(
    'FileName6',
    'MediaType6',
    'Buffer8'
  )
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.upload_client_document(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Upload Client Photo

Uploads a client’s profile photo. The maximum file size is 4 MB and acceptable file types are:

* bmp
* jpeg
* gif
* tiff
* png

```ruby
def upload_client_photo(version,
                        request,
                        site_id,
                        authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UploadClientPhotoRequest`](../../doc/models/upload-client-photo-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UploadClientPhotoResponse`](../../doc/models/upload-client-photo-response.md)

## Example Usage

```ruby
version = '6'

request = UploadClientPhotoRequest.new(
  'Bytes6',
  'ClientId0'
)

site_id = '-99'

authorization = 'authorization6'

result = client_controller.upload_client_photo(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Delete Client Formula Note

This endpoint deletes an existing formula note. A staff user token must be included with staff assigned permission to view client profile or have both ViewAppointmentDetails and ModifyAppointment permissions.

```ruby
def delete_client_formula_note(version,
                               request_client_id,
                               request_formula_note_id,
                               site_id,
                               authorization: nil,
                               request_limit: nil,
                               request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The client ID of the client whose formula note needs to be deleted. |
| `request_formula_note_id` | `Integer` | Query, Required | The formula note ID for the note to be deleted. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

`void`

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

request_formula_note_id = 72

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

client_controller.delete_client_formula_note(
  version,
  request_client_id,
  request_formula_note_id,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Delete Contact Log

This endpoint deletes contactlog of client. This endpoint requires staff user credentials.

```ruby
def delete_contact_log(version,
                       request_client_id,
                       request_contact_log_id,
                       site_id,
                       authorization: nil,
                       request_test: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_client_id` | `String` | Query, Required | The client ID of the client whose Contact Log is being deleted. |
| `request_contact_log_id` | `Integer` | Query, Required | The Contact Log ID. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_test` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that this is a test request and no data is inserted into the subscriber’s database.<br>When `false`, the database is updated. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

request_client_id = 'request.clientId2'

request_contact_log_id = 90

site_id = '-99'

authorization = 'authorization6'

request_test = false

result = client_controller.delete_contact_log(
  version,
  request_client_id,
  request_contact_log_id,
  site_id,
  authorization: authorization,
  request_test: request_test
)
```

