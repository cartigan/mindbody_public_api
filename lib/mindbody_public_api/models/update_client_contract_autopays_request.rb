# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # UpdateClientContractAutopaysRequest Model.
  class UpdateClientContractAutopaysRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Client Contract Id
    # @return [Integer]
    attr_accessor :client_contract_id

    # Autopay start date
    # @return [DateTime]
    attr_accessor :autopay_start_date

    # (optional) - Indefinite if not provided
    # @return [DateTime]
    attr_accessor :autopay_end_date

    # Product Id to update (optional if contract has only one product)
    # @return [Integer]
    attr_accessor :product_id

    # (optional) - Replaces the product with this product
    # @return [Integer]
    attr_accessor :replace_with_product_id

    # Overrides autopay amount or amount that would come from ProductId
    # @return [Float]
    attr_accessor :amount

    # (optional) - If true, will update autopays with any productID
    # @return [TrueClass | FalseClass]
    attr_accessor :overwrite_all_product_i_ds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_contract_id'] = 'ClientContractId'
      @_hash['autopay_start_date'] = 'AutopayStartDate'
      @_hash['autopay_end_date'] = 'AutopayEndDate'
      @_hash['product_id'] = 'ProductId'
      @_hash['replace_with_product_id'] = 'ReplaceWithProductId'
      @_hash['amount'] = 'Amount'
      @_hash['overwrite_all_product_i_ds'] = 'OverwriteAllProductIDs'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        client_contract_id
        autopay_start_date
        autopay_end_date
        product_id
        replace_with_product_id
        amount
        overwrite_all_product_i_ds
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_contract_id = SKIP, autopay_start_date = SKIP,
                   autopay_end_date = SKIP, product_id = SKIP,
                   replace_with_product_id = SKIP, amount = SKIP,
                   overwrite_all_product_i_ds = SKIP)
      @client_contract_id = client_contract_id unless client_contract_id == SKIP
      @autopay_start_date = autopay_start_date unless autopay_start_date == SKIP
      @autopay_end_date = autopay_end_date unless autopay_end_date == SKIP
      @product_id = product_id unless product_id == SKIP
      @replace_with_product_id = replace_with_product_id unless replace_with_product_id == SKIP
      @amount = amount unless amount == SKIP
      unless overwrite_all_product_i_ds == SKIP
        @overwrite_all_product_i_ds =
          overwrite_all_product_i_ds
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_contract_id =
        hash.key?('ClientContractId') ? hash['ClientContractId'] : SKIP
      autopay_start_date = if hash.key?('AutopayStartDate')
                             (DateTimeHelper.from_rfc3339(hash['AutopayStartDate']) if hash['AutopayStartDate'])
                           else
                             SKIP
                           end
      autopay_end_date = if hash.key?('AutopayEndDate')
                           (DateTimeHelper.from_rfc3339(hash['AutopayEndDate']) if hash['AutopayEndDate'])
                         else
                           SKIP
                         end
      product_id = hash.key?('ProductId') ? hash['ProductId'] : SKIP
      replace_with_product_id =
        hash.key?('ReplaceWithProductId') ? hash['ReplaceWithProductId'] : SKIP
      amount = hash.key?('Amount') ? hash['Amount'] : SKIP
      overwrite_all_product_i_ds =
        hash.key?('OverwriteAllProductIDs') ? hash['OverwriteAllProductIDs'] : SKIP

      # Create object from extracted values.
      UpdateClientContractAutopaysRequest.new(client_contract_id,
                                              autopay_start_date,
                                              autopay_end_date,
                                              product_id,
                                              replace_with_product_id,
                                              amount,
                                              overwrite_all_product_i_ds)
    end

    def to_custom_autopay_start_date
      DateTimeHelper.to_rfc3339(autopay_start_date)
    end

    def to_custom_autopay_end_date
      DateTimeHelper.to_rfc3339(autopay_end_date)
    end
  end
end
