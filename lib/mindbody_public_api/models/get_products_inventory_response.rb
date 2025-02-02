# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetProductsInventoryResponse Model.
  class GetProductsInventoryResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the pagination to use.
    # @return [PaginationResponse]
    attr_accessor :pagination_response

    # Contains information about the products inventory.
    # @return [Array[ProductsInventory]]
    attr_accessor :products_inventory

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pagination_response'] = 'PaginationResponse'
      @_hash['products_inventory'] = 'ProductsInventory'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pagination_response
        products_inventory
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pagination_response = SKIP, products_inventory = SKIP)
      @pagination_response = pagination_response unless pagination_response == SKIP
      @products_inventory = products_inventory unless products_inventory == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pagination_response = PaginationResponse.from_hash(hash['PaginationResponse']) if
        hash['PaginationResponse']
      # Parameter is an array, so we need to iterate through it
      products_inventory = nil
      unless hash['ProductsInventory'].nil?
        products_inventory = []
        hash['ProductsInventory'].each do |structure|
          products_inventory << (ProductsInventory.from_hash(structure) if structure)
        end
      end

      products_inventory = SKIP unless hash.key?('ProductsInventory')

      # Create object from extracted values.
      GetProductsInventoryResponse.new(pagination_response,
                                       products_inventory)
    end
  end
end
