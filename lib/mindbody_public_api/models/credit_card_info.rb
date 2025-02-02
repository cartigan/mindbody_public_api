# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # INformation about an individual credit card
  class CreditCardInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :credit_card_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :exp_month

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :exp_year

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_city

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_postal_code

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :save_info

    # Card Id of a stored instruments card
    # @return [String]
    attr_accessor :card_id

    # CVV of the card
    # @return [String]
    attr_accessor :cvv

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credit_card_number'] = 'CreditCardNumber'
      @_hash['exp_month'] = 'ExpMonth'
      @_hash['exp_year'] = 'ExpYear'
      @_hash['billing_name'] = 'BillingName'
      @_hash['billing_address'] = 'BillingAddress'
      @_hash['billing_city'] = 'BillingCity'
      @_hash['billing_state'] = 'BillingState'
      @_hash['billing_postal_code'] = 'BillingPostalCode'
      @_hash['save_info'] = 'SaveInfo'
      @_hash['card_id'] = 'CardId'
      @_hash['cvv'] = 'CVV'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        credit_card_number
        exp_month
        exp_year
        billing_name
        billing_address
        billing_city
        billing_state
        billing_postal_code
        save_info
        card_id
        cvv
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(credit_card_number = SKIP, exp_month = SKIP, exp_year = SKIP,
                   billing_name = SKIP, billing_address = SKIP,
                   billing_city = SKIP, billing_state = SKIP,
                   billing_postal_code = SKIP, save_info = SKIP, card_id = SKIP,
                   cvv = SKIP)
      @credit_card_number = credit_card_number unless credit_card_number == SKIP
      @exp_month = exp_month unless exp_month == SKIP
      @exp_year = exp_year unless exp_year == SKIP
      @billing_name = billing_name unless billing_name == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_postal_code = billing_postal_code unless billing_postal_code == SKIP
      @save_info = save_info unless save_info == SKIP
      @card_id = card_id unless card_id == SKIP
      @cvv = cvv unless cvv == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      credit_card_number =
        hash.key?('CreditCardNumber') ? hash['CreditCardNumber'] : SKIP
      exp_month = hash.key?('ExpMonth') ? hash['ExpMonth'] : SKIP
      exp_year = hash.key?('ExpYear') ? hash['ExpYear'] : SKIP
      billing_name = hash.key?('BillingName') ? hash['BillingName'] : SKIP
      billing_address =
        hash.key?('BillingAddress') ? hash['BillingAddress'] : SKIP
      billing_city = hash.key?('BillingCity') ? hash['BillingCity'] : SKIP
      billing_state = hash.key?('BillingState') ? hash['BillingState'] : SKIP
      billing_postal_code =
        hash.key?('BillingPostalCode') ? hash['BillingPostalCode'] : SKIP
      save_info = hash.key?('SaveInfo') ? hash['SaveInfo'] : SKIP
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      cvv = hash.key?('CVV') ? hash['CVV'] : SKIP

      # Create object from extracted values.
      CreditCardInfo.new(credit_card_number,
                         exp_month,
                         exp_year,
                         billing_name,
                         billing_address,
                         billing_city,
                         billing_state,
                         billing_postal_code,
                         save_info,
                         card_id,
                         cvv)
    end
  end
end
