# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetGiftCardBalanceResponse Model.
  class GetGiftCardBalanceResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The gift card's barcode ID.
    # @return [String]
    attr_accessor :barcode_id

    # The gift card's remaining balance.
    # @return [Float]
    attr_accessor :remaining_balance

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['barcode_id'] = 'BarcodeId'
      @_hash['remaining_balance'] = 'RemainingBalance'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        barcode_id
        remaining_balance
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(barcode_id = SKIP, remaining_balance = SKIP)
      @barcode_id = barcode_id unless barcode_id == SKIP
      @remaining_balance = remaining_balance unless remaining_balance == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      barcode_id = hash.key?('BarcodeId') ? hash['BarcodeId'] : SKIP
      remaining_balance =
        hash.key?('RemainingBalance') ? hash['RemainingBalance'] : SKIP

      # Create object from extracted values.
      GetGiftCardBalanceResponse.new(barcode_id,
                                     remaining_balance)
    end
  end
end
