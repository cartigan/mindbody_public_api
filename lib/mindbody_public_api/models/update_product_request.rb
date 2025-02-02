# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Update Product Request Model
  class UpdateProductRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The unique ID of the product variant, for example, a particular size and
    # color combination.
    # @return [String]
    attr_accessor :barcode_id

    # The price of the product.
    # @return [Float]
    attr_accessor :price

    # The online price of the product.
    # @return [Float]
    attr_accessor :online_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['barcode_id'] = 'BarcodeId'
      @_hash['price'] = 'Price'
      @_hash['online_price'] = 'OnlinePrice'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        barcode_id
        price
        online_price
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(barcode_id = SKIP, price = SKIP, online_price = SKIP)
      @barcode_id = barcode_id unless barcode_id == SKIP
      @price = price unless price == SKIP
      @online_price = online_price unless online_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      barcode_id = hash.key?('BarcodeId') ? hash['BarcodeId'] : SKIP
      price = hash.key?('Price') ? hash['Price'] : SKIP
      online_price = hash.key?('OnlinePrice') ? hash['OnlinePrice'] : SKIP

      # Create object from extracted values.
      UpdateProductRequest.new(barcode_id,
                               price,
                               online_price)
    end
  end
end
