# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # PaymentType Model.
  class PaymentType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Payment Type Id used for api calls.
    # @return [Integer]
    attr_accessor :id

    # Payment Type Name
    # @return [String]
    attr_accessor :payment_type_name

    # Check if Payment type is active.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # Payment type fee.
    # @return [Float]
    attr_accessor :fee

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['payment_type_name'] = 'PaymentTypeName'
      @_hash['active'] = 'Active'
      @_hash['fee'] = 'Fee'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        payment_type_name
        active
        fee
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, payment_type_name = SKIP, active = SKIP,
                   fee = SKIP)
      @id = id unless id == SKIP
      @payment_type_name = payment_type_name unless payment_type_name == SKIP
      @active = active unless active == SKIP
      @fee = fee unless fee == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      payment_type_name =
        hash.key?('PaymentTypeName') ? hash['PaymentTypeName'] : SKIP
      active = hash.key?('Active') ? hash['Active'] : SKIP
      fee = hash.key?('Fee') ? hash['Fee'] : SKIP

      # Create object from extracted values.
      PaymentType.new(id,
                      payment_type_name,
                      active,
                      fee)
    end
  end
end
