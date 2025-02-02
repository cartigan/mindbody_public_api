# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Utility class for custom header authorization.
  class CustomHeaderAuthentication < CoreLibrary::HeaderAuth
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'CustomHeaderAuthentication: api_key is undefined.'
    end

    # Initialization constructor.
    def initialize(custom_header_authentication_credentials)
      auth_params = {}
      auth_params['API-Key'] = custom_header_authentication_credentials.api_key unless
        custom_header_authentication_credentials.nil? || custom_header_authentication_credentials.api_key.nil?

      super auth_params
    end
  end

  # Data class for CustomHeaderAuthenticationCredentials.
  # Data class for CustomHeaderAuthenticationCredentials.
  class CustomHeaderAuthenticationCredentials
    attr_reader :api_key

    def initialize(api_key:)
      raise ArgumentError, 'api_key cannot be nil' if api_key.nil?

      @api_key = api_key
    end

    def clone_with(api_key: nil)
      api_key ||= self.api_key

      CustomHeaderAuthenticationCredentials.new(api_key: api_key)
    end
  end
end
