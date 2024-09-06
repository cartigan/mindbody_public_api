# Sale

```ruby
sale_controller = client.sale
```

## Class Name

`SaleController`

## Methods

* [Get Accepted Card Types](../../doc/controllers/sale.md#get-accepted-card-types)
* [Get Contracts](../../doc/controllers/sale.md#get-contracts)
* [Get Custom Payment Methods](../../doc/controllers/sale.md#get-custom-payment-methods)
* [Get Gift Card Balance](../../doc/controllers/sale.md#get-gift-card-balance)
* [Get Gift Cards](../../doc/controllers/sale.md#get-gift-cards)
* [Get Packages](../../doc/controllers/sale.md#get-packages)
* [Get Products](../../doc/controllers/sale.md#get-products)
* [Update Products](../../doc/controllers/sale.md#update-products)
* [Get Products Inventory](../../doc/controllers/sale.md#get-products-inventory)
* [Get Sales](../../doc/controllers/sale.md#get-sales)
* [Get Services](../../doc/controllers/sale.md#get-services)
* [Update Services](../../doc/controllers/sale.md#update-services)
* [Get Transactions](../../doc/controllers/sale.md#get-transactions)
* [Checkout Shopping Cart](../../doc/controllers/sale.md#checkout-shopping-cart)
* [Purchase Account Credit](../../doc/controllers/sale.md#purchase-account-credit)
* [Purchase Contract](../../doc/controllers/sale.md#purchase-contract)
* [Purchase Gift Card](../../doc/controllers/sale.md#purchase-gift-card)
* [Return Sale](../../doc/controllers/sale.md#return-sale)
* [Update Product Price](../../doc/controllers/sale.md#update-product-price)
* [Update Sale Date](../../doc/controllers/sale.md#update-sale-date)


# Get Accepted Card Types

Gets a list of card types that the site accepts. You can also use `GET Sites` to return the Site object, which contains individual accepted card types for requested sites.

This endpoint has no query parameters.The response returns a list of strings. Possible values are:

* Visa
* MasterCard
* Discover
* AMEX

```ruby
def get_accepted_card_types(version,
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

`Array<String>`

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.get_accepted_card_types(
  version,
  site_id,
  authorization: authorization
)
```


# Get Contracts

Returns the contracts and autopay options that are available on a location-by-location basis. Depending on the configurations established by the site, this endpoint returns options that can be used to sign up clients for recurring payments for services offered by the business.

```ruby
def get_contracts(version,
                  request_location_id,
                  site_id,
                  authorization: nil,
                  request_consumer_id: nil,
                  request_contract_ids: nil,
                  request_limit: nil,
                  request_offset: nil,
                  request_promo_code: nil,
                  request_sold_online: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request_location_id` | `Integer` | Query, Required | The ID of the location that has the requested contracts and AutoPay options. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_consumer_id` | `Integer` | Query, Optional | The ID of the client. |
| `request_contract_ids` | `Array<Integer>` | Query, Optional | When included, the response only contains details about the specified contract IDs. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_promo_code` | `String` | Query, Optional | PromoCode to apply |
| `request_sold_online` | `TrueClass \| FalseClass` | Query, Optional | When `true`, the response only contains details about contracts and AutoPay options that can be sold online.<br>When `false`, all contracts are returned.<br>Default: **false** |

## Response Type

[`GetContractsResponse`](../../doc/models/get-contracts-response.md)

## Example Usage

```ruby
version = '6'

request_location_id = 90

site_id = '-99'

authorization = 'authorization6'

request_consumer_id = 120

request_contract_ids = [
  39,
  40
]

request_limit = 62

request_offset = 100

request_promo_code = 'request.promoCode0'

request_sold_online = false

result = sale_controller.get_contracts(
  version,
  request_location_id,
  site_id,
  authorization: authorization,
  request_consumer_id: request_consumer_id,
  request_contract_ids: request_contract_ids,
  request_limit: request_limit,
  request_offset: request_offset,
  request_promo_code: request_promo_code,
  request_sold_online: request_sold_online
)
```


# Get Custom Payment Methods

Get payment methods that can be used to pay for sales at a site.

```ruby
def get_custom_payment_methods(version,
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

[`GetCustomPaymentMethodsResponse`](../../doc/models/get-custom-payment-methods-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_offset = 100

result = sale_controller.get_custom_payment_methods(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_offset: request_offset
)
```


# Get Gift Card Balance

Returns a gift card’s remaining balance.

```ruby
def get_gift_card_balance(version,
                          site_id,
                          authorization: nil,
                          barcode_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `barcode_id` | `String` | Query, Optional | The barcode ID of the gift card for which you want the balance. |

## Response Type

[`GetGiftCardBalanceResponse`](../../doc/models/get-gift-card-balance-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

barcode_id = 'barcodeId6'

result = sale_controller.get_gift_card_balance(
  version,
  site_id,
  authorization: authorization,
  barcode_id: barcode_id
)
```


# Get Gift Cards

Returns information about gift cards that can be purchased.

```ruby
def get_gift_cards(version,
                   site_id,
                   authorization: nil,
                   request_ids: nil,
                   request_include_custom_layouts: nil,
                   request_limit: nil,
                   request_location_id: nil,
                   request_offset: nil,
                   request_sold_online: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_ids` | `Array<Integer>` | Query, Optional | Filters the results to the requested gift card IDs.<br /><br>Default: **all** gift cards. |
| `request_include_custom_layouts` | `TrueClass \| FalseClass` | Query, Optional | When `true`, includes custom gift card layouts.<br /><br>When `false`, includes only system layouts.<br>Default: **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | When included, returns gift cards that are sold at the provided location ID. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_sold_online` | `TrueClass \| FalseClass` | Query, Optional | When `true`, only returns gift cards that are sold online.<br /><br>Default: **false** |

## Response Type

[`GetGiftCardResponse`](../../doc/models/get-gift-card-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_ids = [
  1,
  2
]

request_include_custom_layouts = false

request_limit = 62

request_location_id = 90

request_offset = 100

request_sold_online = false

result = sale_controller.get_gift_cards(
  version,
  site_id,
  authorization: authorization,
  request_ids: request_ids,
  request_include_custom_layouts: request_include_custom_layouts,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset,
  request_sold_online: request_sold_online
)
```


# Get Packages

A package is typically used to combine multiple services and/or products into a single offering. Staff members can check out multiple appointments while selling the package, and can discount the items included. For example, a spa might bundle a massage, a pedicure, a manicure, a facial, and a few selected beauty products into a package.

```ruby
def get_packages(version,
                 site_id,
                 authorization: nil,
                 request_limit: nil,
                 request_location_id: nil,
                 request_offset: nil,
                 request_package_ids: nil,
                 request_sell_online: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | The location ID to use to determine the tax for the products that this request returns.<br /><br>Default: **online store** |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_package_ids` | `Array<Integer>` | Query, Optional | A list of the packages IDs to filter by. |
| `request_sell_online` | `TrueClass \| FalseClass` | Query, Optional | When `true`, only returns products that can be sold online.<br /><br>When `false`, all products are returned.<br /><br>Default: **false** |

## Response Type

[`GetPackagesResponse`](../../doc/models/get-packages-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_limit = 62

request_location_id = 90

request_offset = 100

request_package_ids = [
  158,
  159
]

request_sell_online = false

result = sale_controller.get_packages(
  version,
  site_id,
  authorization: authorization,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset,
  request_package_ids: request_package_ids,
  request_sell_online: request_sell_online
)
```


# Get Products

Get retail products available for purchase at a site.

```ruby
def get_products(version,
                 site_id,
                 authorization: nil,
                 request_category_ids: nil,
                 request_limit: nil,
                 request_location_id: nil,
                 request_offset: nil,
                 request_product_ids: nil,
                 request_search_text: nil,
                 request_sell_online: nil,
                 request_sub_category_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_category_ids` | `Array<Integer>` | Query, Optional | A list of revenue category IDs to filter by. Use this ID when calling the GET Categories endpoint.<br><br>**Note:** The values for these are not currently retrievable through the API. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | The location ID to use to determine the tax for the products that this request returns.<br /><br>Default: **online store** |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_product_ids` | `Array<String>` | Query, Optional | The barcode number of the product to be filter by. |
| `request_search_text` | `String` | Query, Optional | A search filter, used for searching by term. |
| `request_sell_online` | `TrueClass \| FalseClass` | Query, Optional | When `true`, only products that can be sold online are returned.<br /><br>When `false`, all products are returned.<br /><br>Default: **false** |
| `request_sub_category_ids` | `Array<Integer>` | Query, Optional | A list of subcategory IDs to filter by. Use this ID when calling the GET Categories endpoint.<br><br>**Note:** The values for these are not currently retrievable through the API. |

## Response Type

[`GetProductsResponse`](../../doc/models/get-products-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_category_ids = [
  140,
  141
]

request_limit = 62

request_location_id = 90

request_offset = 100

request_product_ids = [
  'request.productIds3',
  'request.productIds4'
]

request_search_text = 'request.searchText0'

request_sell_online = false

request_sub_category_ids = [
  173,
  174,
  175
]

result = sale_controller.get_products(
  version,
  site_id,
  authorization: authorization,
  request_category_ids: request_category_ids,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset,
  request_product_ids: request_product_ids,
  request_search_text: request_search_text,
  request_sell_online: request_sell_online,
  request_sub_category_ids: request_sub_category_ids
)
```


# Update Products

Update retail products available for purchase at a site.

```ruby
def update_products(version,
                    site_id,
                    update_products_requests,
                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `update_products_requests` | [`Array<UpdateProductRequest>`](../../doc/models/update-product-request.md) | Body, Required | - |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`GetProductsResponse`](../../doc/models/get-products-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

update_products_requests = [
  UpdateProductRequest.new(
    'BarcodeId2',
    47.22,
    81.74
  ),
  UpdateProductRequest.new(
    'BarcodeId2',
    47.22,
    81.74
  )
]

authorization = 'authorization6'

result = sale_controller.update_products(
  version,
  site_id,
  update_products_requests,
  authorization: authorization
)
```


# Get Products Inventory

Get retail products inventory data available at a site.

```ruby
def get_products_inventory(version,
                           site_id,
                           authorization: nil,
                           request_barcode_ids: nil,
                           request_limit: nil,
                           request_location_ids: nil,
                           request_offset: nil,
                           request_product_ids: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_barcode_ids` | `Array<String>` | Query, Optional | When included, the response only contains details about the specified Barcode Ids. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_ids` | `Array<Integer>` | Query, Optional | When included, the response only contains details about the specified location Ids. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_product_ids` | `Array<String>` | Query, Optional | When included, the response only contains details about the specified product Ids. |

## Response Type

[`GetProductsInventoryResponse`](../../doc/models/get-products-inventory-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_barcode_ids = [
  'request.barcodeIds6'
]

request_limit = 62

request_location_ids = [
  192
]

request_offset = 100

request_product_ids = [
  'request.productIds3',
  'request.productIds4'
]

result = sale_controller.get_products_inventory(
  version,
  site_id,
  authorization: authorization,
  request_barcode_ids: request_barcode_ids,
  request_limit: request_limit,
  request_location_ids: request_location_ids,
  request_offset: request_offset,
  request_product_ids: request_product_ids
)
```


# Get Sales

Get sales completed at a site.

```ruby
def get_sales(version,
              site_id,
              authorization: nil,
              request_end_sale_date_time: nil,
              request_limit: nil,
              request_offset: nil,
              request_payment_method_id: nil,
              request_sale_id: nil,
              request_start_sale_date_time: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_end_sale_date_time` | `DateTime` | Query, Optional | Filters results to sales that happened before this date and time. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_payment_method_id` | `Integer` | Query, Optional | Filters results to sales paid for by the given payment method ID which indicates payment method(s) (i.e. cash, VISA, AMEX, Check, etc.). |
| `request_sale_id` | `Integer` | Query, Optional | The sale ID associated with the particular item. It Filters results to the requested sale ID. |
| `request_start_sale_date_time` | `DateTime` | Query, Optional | Filters results to sales that happened after this date and time. |

## Response Type

[`GetSalesResponse`](../../doc/models/get-sales-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_end_sale_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_limit = 62

request_offset = 100

request_payment_method_id = 140

request_sale_id = 32

request_start_sale_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = sale_controller.get_sales(
  version,
  site_id,
  authorization: authorization,
  request_end_sale_date_time: request_end_sale_date_time,
  request_limit: request_limit,
  request_offset: request_offset,
  request_payment_method_id: request_payment_method_id,
  request_sale_id: request_sale_id,
  request_start_sale_date_time: request_start_sale_date_time
)
```


# Get Services

Get pricing options available for purchase at a site

```ruby
def get_services(version,
                 site_id,
                 authorization: nil,
                 request_class_id: nil,
                 request_class_schedule_id: nil,
                 request_hide_related_programs: nil,
                 request_include_discontinued: nil,
                 request_include_sale_in_contract_only: nil,
                 request_limit: nil,
                 request_location_id: nil,
                 request_offset: nil,
                 request_program_ids: nil,
                 request_sell_online: nil,
                 request_service_ids: nil,
                 request_session_type_ids: nil,
                 request_staff_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_class_id` | `Integer` | Query, Optional | Filters to the pricing options for the specified class ID. |
| `request_class_schedule_id` | `Integer` | Query, Optional | Filters to the pricing options for the specified class schedule ID. |
| `request_hide_related_programs` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that pricing options of related programs are omitted from the response.<br /><br>Default: **false** |
| `request_include_discontinued` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that the filtered pricing option list includes discontinued pricing options.<br /><br>Default: **false** |
| `request_include_sale_in_contract_only` | `TrueClass \| FalseClass` | Query, Optional | When `true`, indicates that the filtered pricing option list includes sale in contract only pricing options.<br /><br>Default: **false** |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | When specified, for each returned pricing option, `TaxRate` and `TaxIncluded` are calculated according to the specified location. Note that this does not filter results to only services provided at the given location, and for locations where Value-Added Tax (VAT) rules apply, the `TaxRate` is set to zero. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_program_ids` | `Array<Integer>` | Query, Optional | Filters to pricing options with the specified program IDs. |
| `request_sell_online` | `TrueClass \| FalseClass` | Query, Optional | When `true`, filters to the pricing options that can be sold online.<br /><br>Default: **false** |
| `request_service_ids` | `Array<String>` | Query, Optional | Filters to the pricing options with the specified IDs. In this context, service and pricing option are used interchangeably. These are the `PurchasedItems[].Id` returned from GET Sales. |
| `request_session_type_ids` | `Array<Integer>` | Query, Optional | Filters to the pricing options with the specified session types IDs. |
| `request_staff_id` | `Integer` | Query, Optional | Sets `Price` and `OnlinePrice` to the particular pricing of a specific staff member, if allowed by the business. |

## Response Type

[`GetServicesResponse`](../../doc/models/get-services-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_class_id = 206

request_class_schedule_id = 226

request_hide_related_programs = false

request_include_discontinued = false

request_include_sale_in_contract_only = false

request_limit = 62

request_location_id = 90

request_offset = 100

request_program_ids = [
  91,
  92,
  93
]

request_sell_online = false

request_service_ids = [
  'request.serviceIds6',
  'request.serviceIds7',
  'request.serviceIds8'
]

request_session_type_ids = [
  228,
  229
]

request_staff_id = 180

result = sale_controller.get_services(
  version,
  site_id,
  authorization: authorization,
  request_class_id: request_class_id,
  request_class_schedule_id: request_class_schedule_id,
  request_hide_related_programs: request_hide_related_programs,
  request_include_discontinued: request_include_discontinued,
  request_include_sale_in_contract_only: request_include_sale_in_contract_only,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset,
  request_program_ids: request_program_ids,
  request_sell_online: request_sell_online,
  request_service_ids: request_service_ids,
  request_session_type_ids: request_session_type_ids,
  request_staff_id: request_staff_id
)
```


# Update Services

Update unit price and online price of provided services.

```ruby
def update_services(version,
                    site_id,
                    update_services_request,
                    authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `update_services_request` | [`Array<UpdateServiceRequest>`](../../doc/models/update-service-request.md) | Body, Required | - |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateServiceResponse`](../../doc/models/update-service-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

update_services_request = [
  UpdateServiceRequest.new(
    'BarcodeId8',
    176.98,
    211.5
  )
]

authorization = 'authorization6'

result = sale_controller.update_services(
  version,
  site_id,
  update_services_request,
  authorization: authorization
)
```


# Get Transactions

This endpoint returns a list of transaction details of processed sales.

```ruby
def get_transactions(version,
                     site_id,
                     authorization: nil,
                     request_client_id: nil,
                     request_limit: nil,
                     request_location_id: nil,
                     request_offset: nil,
                     request_sale_id: nil,
                     request_status: nil,
                     request_transaction_end_date_time: nil,
                     request_transaction_id: nil,
                     request_transaction_start_date_time: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |
| `request_client_id` | `Integer` | Query, Optional | Filters results to the requested client ID. |
| `request_limit` | `Integer` | Query, Optional | Number of results to include, defaults to 100 |
| `request_location_id` | `Integer` | Query, Optional | Filters the transaction results with the ID number associated with the location of the sale. |
| `request_offset` | `Integer` | Query, Optional | Page offset, defaults to 0. |
| `request_sale_id` | `Integer` | Query, Optional | Filters the transaction results with the ID number associated with the sale. |
| `request_status` | `String` | Query, Optional | Filters the transaction results by the estimated transaction status. |
| `request_transaction_end_date_time` | `DateTime` | Query, Optional | Filters the transaction results that happpened before this date and time.<br>Default: **today’s date** |
| `request_transaction_id` | `Integer` | Query, Optional | Filters the transaction results with the ID number generated when the sale is processed. |
| `request_transaction_start_date_time` | `DateTime` | Query, Optional | Filters the transaction results that happpened after this date and time.<br>Default: **today’s date** |

## Response Type

[`GetTransactionsResponse`](../../doc/models/get-transactions-response.md)

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

request_client_id = 222

request_limit = 62

request_location_id = 90

request_offset = 100

request_sale_id = 32

request_status = 'request.status2'

request_transaction_end_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

request_transaction_id = 200

request_transaction_start_date_time = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = sale_controller.get_transactions(
  version,
  site_id,
  authorization: authorization,
  request_client_id: request_client_id,
  request_limit: request_limit,
  request_location_id: request_location_id,
  request_offset: request_offset,
  request_sale_id: request_sale_id,
  request_status: request_status,
  request_transaction_end_date_time: request_transaction_end_date_time,
  request_transaction_id: request_transaction_id,
  request_transaction_start_date_time: request_transaction_start_date_time
)
```


# Checkout Shopping Cart

This endpoint provides a wide range of functionality. For example, you can use it when a client purchases new pricing options, retail products, packages, and tips. You can also combine purchasing a new pricing option and many other functions, such as booking a client into a class, booking a new appointment for a client, enrolling a client into an enrollment or course, or reconciling an unpaid, already booked appointment or class. Use this call when a client purchases:

* a pricing option, after calling `GET Services` and choosing a specific pricing option’s ID
* a retail product, after calling `GET Products` and choosing a specific retail product’s ID
* a package, after calling `GET Packages` and choosing a specific package’s ID
* a tip to give to a staff member, after calling `GET Staff` and choosing a specific staff member ID, and the amount that the client wants to tip
  The documentation provides explanations of the request body and response, as well as the cart item metadata, payment item metadata, and purchased cart items.
  This endpoint had been updated to support Strong Customer Authentication (SCA).
  **Note :**
  Protect yourself from processor fees and credit card fraud.Remember to always protect your web forms that leverage POST CheckoutShoppingCart, POST PurchaseContract or POST PurchaseGiftCard with a CAPTCHA!

```ruby
def checkout_shopping_cart(version,
                           request,
                           site_id,
                           authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`CheckoutShoppingCartRequest`](../../doc/models/checkout-shopping-cart-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`CheckoutShoppingCartResponse`](../../doc/models/checkout-shopping-cart-response.md)

## Example Usage

```ruby
version = '6'

request = CheckoutShoppingCartRequest.new(
  'ClientId0',
  [
    CheckoutItemWrapper.new(
      CheckoutItem.new(
        'Type2',
        {
          'key0': { 'key1' => 'val1', 'key2' => 'val2' }
        }
      ),
      41.36,
      [
        CheckoutAppointmentBookingRequest.new(
          16,
          66,
          166,
          [
            ResourceSlim.new(
              216,
              'Name6'
            ),
            ResourceSlim.new(
              216,
              'Name6'
            ),
            ResourceSlim.new(
              216,
              'Name6'
            )
          ],
          DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
        )
      ],
      [
        249,
        250
      ],
      [
        153,
        154,
        155
      ]
    ),
    CheckoutItemWrapper.new(
      CheckoutItem.new(
        'Type2',
        {
          'key0': { 'key1' => 'val1', 'key2' => 'val2' }
        }
      ),
      41.36,
      [
        CheckoutAppointmentBookingRequest.new(
          16,
          66,
          166,
          [
            ResourceSlim.new(
              216,
              'Name6'
            ),
            ResourceSlim.new(
              216,
              'Name6'
            ),
            ResourceSlim.new(
              216,
              'Name6'
            )
          ],
          DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
        )
      ],
      [
        249,
        250
      ],
      [
        153,
        154,
        155
      ]
    ),
    CheckoutItemWrapper.new(
      CheckoutItem.new(
        'Type2',
        {
          'key0': { 'key1' => 'val1', 'key2' => 'val2' }
        }
      ),
      41.36,
      [
        CheckoutAppointmentBookingRequest.new(
          16,
          66,
          166,
          [
            ResourceSlim.new(
              216,
              'Name6'
            ),
            ResourceSlim.new(
              216,
              'Name6'
            ),
            ResourceSlim.new(
              216,
              'Name6'
            )
          ],
          DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
        )
      ],
      [
        249,
        250
      ],
      [
        153,
        154,
        155
      ]
    )
  ],
  [
    CheckoutPaymentInfo.new(
      'Type8',
      {
        'key0': { 'key1' => 'val1', 'key2' => 'val2' },
        'key1': { 'key1' => 'val1', 'key2' => 'val2' }
      }
    ),
    CheckoutPaymentInfo.new(
      'Type8',
      {
        'key0': { 'key1' => 'val1', 'key2' => 'val2' },
        'key1': { 'key1' => 'val1', 'key2' => 'val2' }
      }
    ),
    CheckoutPaymentInfo.new(
      'Type8',
      {
        'key0': { 'key1' => 'val1', 'key2' => 'val2' },
        'key1': { 'key1' => 'val1', 'key2' => 'val2' }
      }
    )
  ],
  'CartId0',
  false,
  false,
  false,
  'PromotionCode2'
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.checkout_shopping_cart(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Purchase Account Credit

Allows a client to purchase account credit from a business.

```ruby
def purchase_account_credit(version,
                            request,
                            site_id,
                            authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`PurchaseAccountCreditRequest`](../../doc/models/purchase-account-credit-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`PurchaseAccountCreditResponse`](../../doc/models/purchase-account-credit-response.md)

## Example Usage

```ruby
version = '6'

request = PurchaseAccountCreditRequest.new(
  'ClientId0',
  false,
  238,
  false,
  232,
  false
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.purchase_account_credit(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Purchase Contract

Allows a client to sign up for a contract or autopay using the information returned from the `GET Contracts` endpoint. The client can pay with a new credit card or with a stored credit card. The client must exist at the site specified before this call is made.

This endpoint allows a developer to specify whether a client pays now or pays on the `StartDate`.If you are building a client-facing experience, you should talk with the business owner to understand the owner’s policies before you give clients a choice of the two payment types.
This endpoint had been updated to support Strong Customer Authentication (SCA).

**Note**
Protect yourself from processor fees and credit card fraud. Remember to always protect your web forms that leverage POST CheckoutShoppingCart, POST PurchaseContract or POST PurchaseGiftCard with a CAPTCHA!

```ruby
def purchase_contract(version,
                      request,
                      site_id,
                      authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`PurchaseContractRequest`](../../doc/models/purchase-contract-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`PurchaseContractResponse`](../../doc/models/purchase-contract-response.md)

## Example Usage

```ruby
version = '6'

request = PurchaseContractRequest.new(
  'ClientId0',
  168,
  false,
  238,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'FirstPaymentOccurs0',
  'ClientSignature4'
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.purchase_contract(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Purchase Gift Card

Allows a client to purchase a gift card from a business in a variety of designs. The card can be emailed to the recipient on a specific day, and a card title and a personal message can be added.
**Note**
Protect yourself from processor fees and credit card fraud.Remember to always protect your web forms that leverage POST CheckoutShoppingCart, POST PurchaseContract or POST PurchaseGiftCard with a CAPTCHA!

```ruby
def purchase_gift_card(version,
                       request,
                       site_id,
                       authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`PurchaseGiftCardRequest`](../../doc/models/purchase-gift-card-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`PurchaseGiftCardResponse`](../../doc/models/purchase-gift-card-response.md)

## Example Usage

```ruby
version = '6'

request = PurchaseGiftCardRequest.new(
  238,
  'PurchaserClientId6',
  222,
  false,
  220,
  false,
  'RecipientEmail2',
  'RecipientName2'
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.purchase_gift_card(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Return Sale

Return a comped sale for a specified sale ID in business mode. The sale is returnable only if it is a sale of a service, product or gift card and it has not been used. Currently, only the comp payment method is supported.

```ruby
def return_sale(version,
                return_sale_request,
                site_id,
                authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `return_sale_request` | [`ReturnSaleRequest`](../../doc/models/return-sale-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`ReturnSaleResponse`](../../doc/models/return-sale-response.md)

## Example Usage

```ruby
version = '6'

return_sale_request = ReturnSaleRequest.new(
  6,
  'ReturnReason8'
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.return_sale(
  version,
  return_sale_request,
  site_id,
  authorization: authorization
)
```


# Update Product Price

This endpoint updates the retail price and an online price for a product. Passing at least one of them is mandatory.

```ruby
def update_product_price(version,
                         request,
                         site_id,
                         authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateProductPriceRequest`](../../doc/models/update-product-price-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateProductPriceResponse`](../../doc/models/update-product-price-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateProductPriceRequest.new(
  'BarcodeId6',
  195.96,
  230.48
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.update_product_price(
  version,
  request,
  site_id,
  authorization: authorization
)
```


# Update Sale Date

This endpoint updates the SaleDate and returns the details of the sale.

```ruby
def update_sale_date(version,
                     request,
                     site_id,
                     authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`UpdateSaleDateRequest`](../../doc/models/update-sale-date-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`UpdateSaleDateResponse`](../../doc/models/update-sale-date-response.md)

## Example Usage

```ruby
version = '6'

request = UpdateSaleDateRequest.new(
  232,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

site_id = '-99'

authorization = 'authorization6'

result = sale_controller.update_sale_date(
  version,
  request,
  site_id,
  authorization: authorization
)
```

