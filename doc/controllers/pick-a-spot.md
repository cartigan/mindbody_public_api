# Pick a Spot

```ruby
pick_a_spot_controller = client.pick_a_spot
```

## Class Name

`PickASpotController`

## Methods

* [Get Class List](../../doc/controllers/pick-a-spot.md#get-class-list)
* [Get Class](../../doc/controllers/pick-a-spot.md#get-class)
* [Get Reservation](../../doc/controllers/pick-a-spot.md#get-reservation)
* [Update Reservation](../../doc/controllers/pick-a-spot.md#update-reservation)
* [Create Reservation](../../doc/controllers/pick-a-spot.md#create-reservation)
* [Delete Reservation](../../doc/controllers/pick-a-spot.md#delete-reservation)


# Get Class List

This endpoint supports pagination. See Pagination object for a description.

```ruby
def get_class_list(version,
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

[`GetPickASpotClassResponse`](../../doc/models/get-pick-a-spot-class-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = pick_a_spot_controller.get_class_list(
  version,
  site_id,
  authorization: authorization
)
```


# Get Class

Get a class filtered by classId.

```ruby
def get_class(version,
              class_id,
              site_id,
              authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `class_id` | `String` | Template, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetPickASpotClassResponse`](../../doc/models/get-pick-a-spot-class-response.md)

## Example Usage

```ruby
version = '6'

class_id = 'classId0'

site_id = '-99'

authorization = 'authorization6'

result = pick_a_spot_controller.get_class(
  version,
  class_id,
  site_id,
  authorization: authorization
)
```


# Get Reservation

Retrieves reservation for Pick a Spot.

```ruby
def get_reservation(version,
                    path_info,
                    site_id,
                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `path_info` | `String` | Template, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetReservationResponse`](../../doc/models/get-reservation-response.md)

## Example Usage

```ruby
version = '6'

path_info = 'pathInfo8'

site_id = '-99'

authorization = 'authorization6'

result = pick_a_spot_controller.get_reservation(
  version,
  path_info,
  site_id,
  authorization: authorization
)
```


# Update Reservation

A user token is required for this endpoint.
This endpoint updates a single reservation.

```ruby
def update_reservation(version,
                       path_info,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `path_info` | `String` | Template, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateReservationResponse`](../../doc/models/update-reservation-response.md)

## Example Usage

```ruby
version = '6'

path_info = 'pathInfo8'

site_id = '-99'

authorization = 'authorization6'

result = pick_a_spot_controller.update_reservation(
  version,
  path_info,
  site_id,
  authorization: authorization
)
```


# Create Reservation

Creates a spot reservation for a given pick-a-spot class. The actual class visit must be created prior to calling this endpoint.
A user token is required for this endpoint.

Sample request:

    POST /pickaspot/v1/reservation
    {
        "SiteId": -1147483363,
        "LocationId": 1,
        "ClassId": "64b14ac8c20ae8f0afd2d409",
        "ReservationExternalId": "44724", // this is a Visit.Id and should be linked to a specific class visit
        "MemberExternalId": "100000136", // this is Client's UniqueId
        "SpotNumber": "5",
        "ReservationDisplayName": "ReservationDisplayName", // optional
        "ReservationType": "Member" // optional. Can be Member, Guest, Instructor, FamilyMember
    }

```ruby
def create_reservation(version,
                       path_info,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `path_info` | `String` | Template, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`CreateReservationResponse`](../../doc/models/create-reservation-response.md)

## Example Usage

```ruby
version = '6'

path_info = 'pathInfo8'

site_id = '-99'

authorization = 'authorization6'

result = pick_a_spot_controller.create_reservation(
  version,
  path_info,
  site_id,
  authorization: authorization
)
```


# Delete Reservation

A user token is required for this endpoint.
This endpoint deletes a single reservation.

```ruby
def delete_reservation(version,
                       path_info,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `path_info` | `String` | Template, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`HttpContent`](../../doc/models/http-content.md)

## Example Usage

```ruby
version = '6'

path_info = 'pathInfo8'

site_id = '-99'

authorization = 'authorization6'

result = pick_a_spot_controller.delete_reservation(
  version,
  path_info,
  site_id,
  authorization: authorization
)
```

