# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # TransactionResponse Model.
  class TransactionResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Transaction ID.
    # @return [Integer]
    attr_accessor :transaction_id

    # The optional valid URL provided by the bank.
    # @return [String]
    attr_accessor :authentication_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_id'] = 'TransactionId'
      @_hash['authentication_url'] = 'AuthenticationUrl'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_id
        authentication_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_id = SKIP, authentication_url = SKIP)
      @transaction_id = transaction_id unless transaction_id == SKIP
      @authentication_url = authentication_url unless authentication_url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_id = hash.key?('TransactionId') ? hash['TransactionId'] : SKIP
      authentication_url =
        hash.key?('AuthenticationUrl') ? hash['AuthenticationUrl'] : SKIP

      # Create object from extracted values.
      TransactionResponse.new(transaction_id,
                              authentication_url)
    end
  end
end
