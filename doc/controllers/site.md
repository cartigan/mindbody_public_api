# Site

```ruby
site_controller = client.site
```

## Class Name

`SiteController`

## Methods

* [Get Activation Code](../../doc/controllers/site.md#get-activation-code)
* [Get Categories](../../doc/controllers/site.md#get-categories)
* [Get Genders](../../doc/controllers/site.md#get-genders)
* [Get Liability Waiver](../../doc/controllers/site.md#get-liability-waiver)
* [Get Locations](../../doc/controllers/site.md#get-locations)
* [Get Memberships](../../doc/controllers/site.md#get-memberships)
* [Get Mobile Providers](../../doc/controllers/site.md#get-mobile-providers)
* [Get Payment Types](../../doc/controllers/site.md#get-payment-types)
* [Get Programs](../../doc/controllers/site.md#get-programs)
* [Get Promo Codes](../../doc/controllers/site.md#get-promo-codes)
* [Get Prospect Stages](../../doc/controllers/site.md#get-prospect-stages)
* [Get Relationships](../../doc/controllers/site.md#get-relationships)
* [Get Resource Availabilities](../../doc/controllers/site.md#get-resource-availabilities)
* [Get Resources](../../doc/controllers/site.md#get-resources)
* [Get Session Types](../../doc/controllers/site.md#get-session-types)
* [Get Sites](../../doc/controllers/site.md#get-sites)
* [Add Client Index](../../doc/controllers/site.md#add-client-index)
* [Add Promo Code](../../doc/controllers/site.md#add-promo-code)
* [Deactivate Promo Code](../../doc/controllers/site.md#deactivate-promo-code)
* [Update Client Index](../../doc/controllers/site.md#update-client-index)


# Get Activation Code

Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.

See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.

Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.

```ruby
def get_activation_code(version,
                        authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetActivationCodeResponse`](../../doc/models/get-activation-code-response.md)

## Example Usage

```ruby
version = '6'

authorization = 'authorization6'

result = site_controller.get_activation_code(
  version,
  authorization: authorization
)
```


# Get Categories

Gets the categories.

```ruby
def get_categories(version,
                   site_id,
                   authorization: nil,
                   request_active: nil,
                   request_category_ids: nil,
                   request_limit: nil,
                   request_offset: nil,
                   request_service: nil,
                   request_sub_category_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains categories which are activated.<br>When `false`, only deactivated categories are returned.<br>Default: **All Categories** |
| `request_category_ids` | `Array<Integer>` | Query, Optional | When included, the response only contains details about the specified category Ids. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_service` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains details about Revenue Categories.<br>When `false`, only Product Revenue Categories are returned.<br>Default: **All Categories** |
| `request_sub_category_ids` | `Array<Integer>` | Query, Optional | When included, the response only contains details about the specified subcategory Ids. |

## Response Type

[`GetCategoriesResponse`](../../doc/models/get-categories-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active = false

request_category_ids = [
  140,
  141
]

request_limit = 62

request_offset = 100

request_service = false

request_sub_category_ids = [
  173,
  174,
  175
]

result = site_controller.get_categories(
  version,
  site_id,
  authorization: authorization,
  request_active: request_active,
  request_category_ids: request_category_ids,
  request_limit: request_limit,
  request_offset: request_offset,
  request_service: request_service,
  request_sub_category_ids: request_sub_category_ids
)
```


# Get Genders

The endpoint returns a list of configured client gender options for a site. Custom gender options are assignable to client genders only. Currently, custom values returned from this endpoint cannot be used as input for other endpoints to specify the genders of staff or client preferences.

```ruby
def get_genders(version,
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

[`GetGendersResponse`](../../doc/models/get-genders-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = site_controller.get_genders(
  version,
  site_id,
  authorization: authorization
)
```


# Get Liability Waiver

Gets Liability Waiver content at the specified business.
This endpoint requires staff user credentials.

```ruby
def get_liability_waiver(version,
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

[`GetLiabilityWaiverResponse`](../../doc/models/get-liability-waiver-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = site_controller.get_liability_waiver(
  version,
  site_id,
  authorization: authorization
)
```


# Get Locations

Get locations for a site.

```ruby
def get_locations(version,
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

[`GetLocationsResponse`](../../doc/models/get-locations-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

result = site_controller.get_locations(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Memberships

Get the memberships at a site.

```ruby
def get_memberships(version,
                    site_id,
                    authorization: nil,
                    request_membership_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_membership_ids` | `Array<Integer>` | Query, Optional | The requested membership IDs.<br /><br>Default: **all** IDs that the authenticated user’s access level allows. |

## Response Type

[`GetMembershipsResponse`](../../doc/models/get-memberships-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_membership_ids = [
  213,
  214
]

result = site_controller.get_memberships(
  version,
  site_id,
  authorization: authorization,
  request_membership_ids: request_membership_ids
)
```


# Get Mobile Providers

Get the list of mobile providers that are supported by the business.

```ruby
def get_mobile_providers(version,
                         site_id,
                         authorization: nil,
                         request_active: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains mobile providers which are activated.<br>When `false`, only deactivated mobile providers are returned.<br>Default: **All Mobile Providers** |

## Response Type

[`GetMobileProvidersResponse`](../../doc/models/get-mobile-providers-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active = false

result = site_controller.get_mobile_providers(
  version,
  site_id,
  authorization: authorization,
  request_active: request_active
)
```


# Get Payment Types

Get payment types for a site.

```ruby
def get_payment_types(version,
                      site_id,
                      authorization: nil,
                      request_active: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains payment types which are activated.<br>When `false`, only deactivated payment types are returned.<br>Default: **All Payment Types** |

## Response Type

[`GetPaymentTypesResponse`](../../doc/models/get-payment-types-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active = false

result = site_controller.get_payment_types(
  version,
  site_id,
  authorization: authorization,
  request_active: request_active
)
```


# Get Programs

Get service categories offered at a site.

```ruby
def get_programs(version,
                 site_id,
                 authorization: nil,
                 request_limit: nil,
                 request_offset: nil,
                 request_online_only: nil,
                 request_program_ids: nil,
                 request_schedule_type: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_online_only` | `TrueClass \| FalseClass` | Query, Optional | If `true`, filters results to show only those programs that are shown online.<br /><br>If `false`, all programs are returned.<br /><br>Default: **false** |
| `request_program_ids` | `Array<Integer>` | Query, Optional | Program Ids to filter for |
| `request_schedule_type` | [`RequestScheduleTypeEnum`](../../doc/models/request-schedule-type-enum.md) | Query, Optional | A schedule type used to filter the returned results. Possible values are:<br><br>* All<br>* Class<br>* Enrollment<br>* Appointment<br>* Resource<br>* Media<br>* Arrival |

## Response Type

[`GetProgramsResponse`](../../doc/models/get-programs-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

request_online_only = false

request_program_ids = [
  91,
  92,
  93
]

request_schedule_type = RequestScheduleTypeEnum::RESOURCE

result = site_controller.get_programs(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset,
  request_online_only: request_online_only,
  request_program_ids: request_program_ids,
  request_schedule_type: request_schedule_type
)
```


# Get Promo Codes

Gets a list of promocodes at the specified business. This endpoint requires staff user credentials.
This staff member should have enabled the Set up promotions / **Semester discounts** staff permission.

```ruby
def get_promo_codes(version,
                    site_id,
                    authorization: nil,
                    request_active_only: nil,
                    request_end_date: nil,
                    request_last_modified_date: nil,
                    request_limit: nil,
                    request_offset: nil,
                    request_online_only: nil,
                    request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active_only` | `TrueClass \| FalseClass` | Query, Optional | If true, filters results to show only promocodes that are active. If **false**, all promocodes are returned.<br>Default: **true** |
| `request_end_date` | `DateTime` | Query, Optional | Filters results to promocodes that were activated before this date. |
| `request_last_modified_date` | `DateTime` | Query, Optional | Filters results to promocodes that were modified on or after this date. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_online_only` | `TrueClass \| FalseClass` | Query, Optional | If `true`, filters results to show only promocodes that can be used for online sale.<br>If `false`, all promocodes are returned.<br>Default: **false** |
| `request_start_date` | `DateTime` | Query, Optional | Filters results to promocodes that were activated after this date. |

## Response Type

[`GetPromoCodesResponse`](../../doc/models/get-promo-codes-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active_only = false

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_last_modified_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_online_only = false

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = site_controller.get_promo_codes(
  version,
  site_id,
  authorization: authorization,
  request_active_only: request_active_only,
  request_end_date: request_end_date,
  request_last_modified_date: request_last_modified_date,
  request_limit: request_limit,
  request_offset: request_offset,
  request_online_only: request_online_only,
  request_start_date: request_start_date
)
```


# Get Prospect Stages

Get the list of prospect stages that represent the prospect stage options for prospective clients.

```ruby
def get_prospect_stages(version,
                        site_id,
                        authorization: nil,
                        request_active: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains prospect stages which are activated.<br>When `false`, only deactivated prospect stages are returned.<br>Default: **All Prospect Stages** |

## Response Type

[`GetProspectStagesResponse`](../../doc/models/get-prospect-stages-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active = false

result = site_controller.get_prospect_stages(
  version,
  site_id,
  authorization: authorization,
  request_active: request_active
)
```


# Get Relationships

This endpoint retrieves the business site relationships.

```ruby
def get_relationships(version,
                      site_id,
                      authorization: nil,
                      request_active: nil,
                      request_limit: nil,
                      request_offset: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_active` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains relationships which are activated.<br>When `false`, only deactivated relationships are returned.<br>Default: **All Relationships** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |

## Response Type

[`GetRelationshipsResponse`](../../doc/models/get-relationships-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_active = false

request_limit = 62

request_offset = 100

result = site_controller.get_relationships(
  version,
  site_id,
  authorization: authorization,
  request_active: request_active,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Resource Availabilities

Get resource availabilities used at a site.

```ruby
def get_resource_availabilities(version,
                                site_id,
                                authorization: nil,
                                request_end_date: nil,
                                request_limit: nil,
                                request_location_ids: nil,
                                request_offset: nil,
                                request_program_ids: nil,
                                request_resource_ids: nil,
                                request_schedule_types: nil,
                                request_start_date: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date` | `DateTime` | Query, Optional | End date. If default, StartDate is used. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | Filter by location ids (optional) |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_program_ids` | `Array<Integer>` | Query, Optional | Filter by program ids (optional) |
| `request_resource_ids` | `Array<Integer>` | Query, Optional | Filter on resourceIds |
| `request_schedule_types` | [`Array<RequestScheduleTypeEnum>`](../../doc/models/request-schedule-type-enum.md) | Query, Optional | Filter by schedule types (optional) |
| `request_start_date` | `DateTime` | Query, Optional | Start time |

## Response Type

[`GetResourcesResponse`](../../doc/models/get-resources-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_end_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

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

request_resource_ids = [
  62
]

request_schedule_types = [
  RequestScheduleTypeEnum::APPOINTMENT,
  RequestScheduleTypeEnum::RESOURCE,
  RequestScheduleTypeEnum::MEDIA
]

request_start_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = site_controller.get_resource_availabilities(
  version,
  site_id,
  authorization: authorization,
  request_end_date: request_end_date,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_program_ids: request_program_ids,
  request_resource_ids: request_resource_ids,
  request_schedule_types: request_schedule_types,
  request_start_date: request_start_date
)
```


# Get Resources

Get resources used at a site.

```ruby
def get_resources(version,
                  site_id,
                  authorization: nil,
                  request_end_date_time: nil,
                  request_include_inactive: nil,
                  request_limit: nil,
                  request_location_id: nil,
                  request_location_ids: nil,
                  request_offset: nil,
                  request_program_ids: nil,
                  request_resource_ids: nil,
                  request_schedule_types: nil,
                  request_session_type_ids: nil,
                  request_start_date_time: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_date_time` | `DateTime` | Query, Optional | The time the resource ends. This parameter is ignored if `EndDateTime` or `LocationID` is not set. |
| `request_include_inactive` | `TrueClass \| FalseClass` | Query, Optional | Enable to include inactive |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | The location of the resource. This parameter is ignored if `EndDateTime` or `LocationID` is not set.<br /><br>Default: **all** |
| `request_location_ids` | `Array<Integer>` | Query, Optional | Filter by location ids (optional) |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_program_ids` | `Array<Integer>` | Query, Optional | Filter by program ids (optional) |
| `request_resource_ids` | `Array<Integer>` | Query, Optional | Filter on resourceIds |
| `request_schedule_types` | [`Array<RequestScheduleTypeEnum>`](../../doc/models/request-schedule-type-enum.md) | Query, Optional | Filter by schedule types (optional) |
| `request_session_type_ids` | `Array<Integer>` | Query, Optional | List of session type IDs.<br /><br>Default: **all** |
| `request_start_date_time` | `DateTime` | Query, Optional | The time the resource starts. This parameter is ignored if `EndDateTime` or `LocationID` is not set. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_end_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_include_inactive = false

request_limit = 62

request_location_id = 90

request_location_ids = [
  192
]

request_offset = 100

request_program_ids = [
  91,
  92,
  93
]

request_resource_ids = [
  62
]

request_schedule_types = [
  RequestScheduleTypeEnum::APPOINTMENT,
  RequestScheduleTypeEnum::RESOURCE,
  RequestScheduleTypeEnum::MEDIA
]

request_session_type_ids = [
  228,
  229
]

request_start_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = site_controller.get_resources(
  version,
  site_id,
  authorization: authorization,
  request_end_date_time: request_end_date_time,
  request_include_inactive: request_include_inactive,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_program_ids: request_program_ids,
  request_resource_ids: request_resource_ids,
  request_schedule_types: request_schedule_types,
  request_session_type_ids: request_session_type_ids,
  request_start_date_time: request_start_date_time
)
```


# Get Session Types

Get the session types used at a site.

```ruby
def get_session_types(version,
                      site_id,
                      authorization: nil,
                      request_limit: nil,
                      request_offset: nil,
                      request_online_only: nil,
                      request_program_i_ds: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_online_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that only the session types that can be booked online should be returned.<br /><br>Default: **false** |
| `request_program_i_ds` | `Array<Integer>` | Query, Optional | Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return. |

## Response Type

[`GetSessionTypesResponse`](../../doc/models/get-session-types-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

request_online_only = false

request_program_i_ds = [
  52,
  53,
  54
]

result = site_controller.get_session_types(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset,
  request_online_only: request_online_only,
  request_program_i_ds: request_program_i_ds
)
```


# Get Sites

Gets a list of sites that the developer has permission to view.

* Passing in no `SiteIds` returns all sites that the developer has access to.
* Passing in one `SiteIds` returns more detailed information about the specified site.

```ruby
def get_sites(version,
              authorization: nil,
              request_include_lead_channels: nil,
              request_limit: nil,
              request_offset: nil,
              request_site_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_include_lead_channels` | `TrueClass \| FalseClass` | Query, Optional | This is an optional parameter to get lead channels for a Site. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_site_ids` | `Array<Integer>` | Query, Optional | List of the requested site IDs. When omitted, returns all sites that the source has access to. |

## Response Type

[`GetSitesResponse`](../../doc/models/get-sites-response.md)

## Example Usage

```ruby
version = '6'

authorization = 'authorization6'

request_include_lead_channels = false

request_limit = 62

request_offset = 100

request_site_ids = [
  135,
  136
]

result = site_controller.get_sites(
  version,
  authorization: authorization,
  request_include_lead_channels: request_include_lead_channels,
  request_limit: request_limit,
  request_offset: request_offset,
  request_site_ids: request_site_ids
)
```


# Add Client Index

Creates a new client index record at the specified business.
This endpoint requires staff user credentials.

```ruby
def add_client_index(version,
                     request,
                     site_id,
                     authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddSiteClientIndexRequest`](../../doc/models/add-site-client-index-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddSiteClientIndexResponse`](../../doc/models/add-site-client-index-response.md)

## Example Usage

```ruby
version = '6'

request = AddSiteClientIndexRequest.new(
  'ClientIndexName2',
  false,
  false,
  false,
  false,
  50
)

site_id = '-99'

authorization = 'authorization6'

result = site_controller.add_client_index(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Add Promo Code

Creates a new promocode record at the specified business.
This endpoint requires staff user credentials. This staff memeber should have enabled the **Set up promotions / Semester discounts** staff permission.

```ruby
def add_promo_code(version,
                   request,
                   site_id,
                   authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`AddPromoCodeRequest`](../../doc/models/add-promo-code-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`AddPromoCodeResponse`](../../doc/models/add-promo-code-response.md)

## Example Usage

```ruby
version = '6'

request = AddPromoCodeRequest.new(
  'Code6',
  'Name6',
  false,
  Discount.new(
    'Type6',
    80.68
  ),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  192
)

site_id = '-99'

authorization = 'authorization6'

result = site_controller.add_promo_code(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Deactivate Promo Code

Deactivates an existing promocode record at the specified business.
This endpoint requires staff user credentials. This staff memeber should have enabled the **Set up promotions / Semester discounts** staff permission.

```ruby
def deactivate_promo_code(version,
                          request,
                          site_id,
                          authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`DeactivatePromoCodeRequest`](../../doc/models/deactivate-promo-code-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

request = DeactivatePromoCodeRequest.new(
  42
)

site_id = '-99'

authorization = 'authorization6'

result = site_controller.deactivate_promo_code(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Client Index

Updates an exisitng client index record at the specified business.
This endpoint requires staff user credentials.

```ruby
def update_client_index(version,
                        request,
                        site_id,
                        authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateSiteClientIndexRequest`](../../doc/models/update-site-client-index-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateSiteClientIndexResponse`](../../doc/models/update-site-client-index-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateSiteClientIndexRequest.new(
  194,
  'ClientIndexName2',
  false,
  false,
  false,
  false,
  50
)

site_id = '-99'

authorization = 'authorization6'

result = site_controller.update_client_index(
  version,
  request,
  site_id,
  authorization: authorization
)
```

