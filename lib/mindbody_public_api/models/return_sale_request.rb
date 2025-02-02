# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # ReturnSaleRequest
  class ReturnSaleRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Sale ID of the sale item to be returned.
    # @return [Integer]
    attr_accessor :sale_id

    # The reason for the return.
    # @return [String]
    attr_accessor :return_reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sale_id'] = 'SaleId'
      @_hash['return_reason'] = 'ReturnReason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        sale_id
        return_reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(sale_id = SKIP, return_reason = SKIP)
      @sale_id = sale_id unless sale_id == SKIP
      @return_reason = return_reason unless return_reason == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      sale_id = hash.key?('SaleId') ? hash['SaleId'] : SKIP
      return_reason = hash.key?('ReturnReason') ? hash['ReturnReason'] : SKIP

      # Create object from extracted values.
      ReturnSaleRequest.new(sale_id,
                            return_reason)
    end
  end
end
