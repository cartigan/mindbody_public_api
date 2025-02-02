# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # A record of a specific client purchase
  class ClientPurchaseRecord < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains the Sale details.
    # @return [Sale]
    attr_accessor :sale

    # The item name and description.
    # @return [String]
    attr_accessor :description

    # If `true`, the item was a payment credited to an account.
    # @return [TrueClass | FalseClass]
    attr_accessor :account_payment

    # The price paid for the item.
    # @return [Float]
    attr_accessor :price

    # The amount paid for the item.
    # @return [Float]
    attr_accessor :amount_paid

    # The discount amount that was applied to the item.
    # @return [Float]
    attr_accessor :discount

    # The amount of tax that was applied to the item.
    # @return [Float]
    attr_accessor :tax

    # The return status of the item. If `true`, this item was returned.
    # @return [TrueClass | FalseClass]
    attr_accessor :returned

    # The quantity of the item purchased.
    # @return [Integer]
    attr_accessor :quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sale'] = 'Sale'
      @_hash['description'] = 'Description'
      @_hash['account_payment'] = 'AccountPayment'
      @_hash['price'] = 'Price'
      @_hash['amount_paid'] = 'AmountPaid'
      @_hash['discount'] = 'Discount'
      @_hash['tax'] = 'Tax'
      @_hash['returned'] = 'Returned'
      @_hash['quantity'] = 'Quantity'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        sale
        description
        account_payment
        price
        amount_paid
        discount
        tax
        returned
        quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(sale = SKIP, description = SKIP, account_payment = SKIP,
                   price = SKIP, amount_paid = SKIP, discount = SKIP,
                   tax = SKIP, returned = SKIP, quantity = SKIP)
      @sale = sale unless sale == SKIP
      @description = description unless description == SKIP
      @account_payment = account_payment unless account_payment == SKIP
      @price = price unless price == SKIP
      @amount_paid = amount_paid unless amount_paid == SKIP
      @discount = discount unless discount == SKIP
      @tax = tax unless tax == SKIP
      @returned = returned unless returned == SKIP
      @quantity = quantity unless quantity == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      sale = Sale.from_hash(hash['Sale']) if hash['Sale']
      description = hash.key?('Description') ? hash['Description'] : SKIP
      account_payment =
        hash.key?('AccountPayment') ? hash['AccountPayment'] : SKIP
      price = hash.key?('Price') ? hash['Price'] : SKIP
      amount_paid = hash.key?('AmountPaid') ? hash['AmountPaid'] : SKIP
      discount = hash.key?('Discount') ? hash['Discount'] : SKIP
      tax = hash.key?('Tax') ? hash['Tax'] : SKIP
      returned = hash.key?('Returned') ? hash['Returned'] : SKIP
      quantity = hash.key?('Quantity') ? hash['Quantity'] : SKIP

      # Create object from extracted values.
      ClientPurchaseRecord.new(sale,
                               description,
                               account_payment,
                               price,
                               amount_paid,
                               discount,
                               tax,
                               returned,
                               quantity)
    end
  end
end
