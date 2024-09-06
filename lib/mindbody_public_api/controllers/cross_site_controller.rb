# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # CrossSiteController
  class CrossSiteController < BaseController
    # Copies the credit card information from one client to another, regardless
    # of site.
    # The source and target clients must have the same email address.
    # @param [String] version Required parameter: version of the api.
    # @param [CopyCreditCardRequest] request Required parameter: Example:
    # @param [String] site_id Required parameter: ID of the site from which to
    # pull data.
    # @param [String] authorization Optional parameter: A staff user
    # authorization token.
    # @return [CopyCreditCardResponse] response from the API call
    def copy_credit_card(version,
                         request,
                         site_id,
                         authorization: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/public/v{version}/crossSite/copycreditcard',
                                     Server::DEFAULT)
                   .template_param(new_parameter(version, key: 'version')
                                    .should_encode(true))
                   .body_param(new_parameter(request))
                   .header_param(new_parameter(site_id, key: 'siteId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(authorization, key: 'authorization'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('API-Key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CopyCreditCardResponse.method(:from_hash)))
        .execute
    end
  end
end
