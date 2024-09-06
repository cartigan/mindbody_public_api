# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # SendAutoEmailRequest Model.
  class SendAutoEmailRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the client email will be sent to.
    # @return [String]
    attr_accessor :client_id

    # The type of the email that will be sent to a client. 
    # Possible values are:
    # * BusinessWelcomeEmail
    # * ConsumerWelcomeEmail
    # @return [String]
    attr_accessor :email_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_id'] = 'ClientId'
      @_hash['email_type'] = 'EmailType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_id = nil, email_type = nil)
      @client_id = client_id
      @email_type = email_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_id = hash.key?('ClientId') ? hash['ClientId'] : nil
      email_type = hash.key?('EmailType') ? hash['EmailType'] : nil

      # Create object from extracted values.
      SendAutoEmailRequest.new(client_id,
                               email_type)
    end
  end
end
