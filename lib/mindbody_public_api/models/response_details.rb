# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Contains information about the response message detail.
  class ResponseDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the response status.
    # @return [String]
    attr_accessor :status

    # The unique transaction ID.
    # @return [String]
    attr_accessor :transaction_id

    # Contains information about the response message detail.
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'Status'
      @_hash['transaction_id'] = 'TransactionId'
      @_hash['message'] = 'Message'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        transaction_id
        message
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status = SKIP, transaction_id = SKIP, message = SKIP)
      @status = status unless status == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @message = message unless message == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('Status') ? hash['Status'] : SKIP
      transaction_id = hash.key?('TransactionId') ? hash['TransactionId'] : SKIP
      message = hash.key?('Message') ? hash['Message'] : SKIP

      # Create object from extracted values.
      ResponseDetails.new(status,
                          transaction_id,
                          message)
    end
  end
end
