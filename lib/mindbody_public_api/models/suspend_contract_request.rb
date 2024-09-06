# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # SuspendContractRequest Model.
  class SuspendContractRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the client.
    # @return [String]
    attr_accessor :client_id

    # The unique ID of the sale of the contract.
    # @return [Integer]
    attr_accessor :client_contract_id

    # ex. Illness, Injury, Vacation. (Note this can be customized by each
    # studio).
    # If provided, then Duration, DurationUnit, and SuspensionFee (if
    # applicable) are automatically applied. Restrict Days are not supported.
    # @return [String]
    attr_accessor :suspension_type

    # The contract suspension start date.
    # Default: *today’s date*
    # @return [DateTime]
    attr_accessor :suspension_start

    # The number of (DurationUnit) the suspension lasts.
    # @return [Integer]
    attr_accessor :duration

    # The unit applied to Duration.
    # @return [Integer]
    attr_accessor :duration_unit

    # When `true`, indicates that suspension is open ended. Also, when `true`,
    # then Duration and DurationUnit are ignored.
    # Default: *false*
    # @return [TrueClass | FalseClass]
    attr_accessor :open_ended

    # The comments for suspending a contract.
    # @return [String]
    attr_accessor :suspension_notes

    # An optional charge that clients who wish to pause a contract for a set
    # period of time can be charged.
    # @return [Float]
    attr_accessor :suspension_fee

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_id'] = 'ClientId'
      @_hash['client_contract_id'] = 'ClientContractId'
      @_hash['suspension_type'] = 'SuspensionType'
      @_hash['suspension_start'] = 'SuspensionStart'
      @_hash['duration'] = 'Duration'
      @_hash['duration_unit'] = 'DurationUnit'
      @_hash['open_ended'] = 'OpenEnded'
      @_hash['suspension_notes'] = 'SuspensionNotes'
      @_hash['suspension_fee'] = 'SuspensionFee'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        suspension_type
        suspension_start
        duration
        duration_unit
        open_ended
        suspension_notes
        suspension_fee
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_id = nil, client_contract_id = nil,
                   suspension_type = SKIP, suspension_start = SKIP,
                   duration = SKIP, duration_unit = SKIP, open_ended = SKIP,
                   suspension_notes = SKIP, suspension_fee = SKIP)
      @client_id = client_id
      @client_contract_id = client_contract_id
      @suspension_type = suspension_type unless suspension_type == SKIP
      @suspension_start = suspension_start unless suspension_start == SKIP
      @duration = duration unless duration == SKIP
      @duration_unit = duration_unit unless duration_unit == SKIP
      @open_ended = open_ended unless open_ended == SKIP
      @suspension_notes = suspension_notes unless suspension_notes == SKIP
      @suspension_fee = suspension_fee unless suspension_fee == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_id = hash.key?('ClientId') ? hash['ClientId'] : nil
      client_contract_id =
        hash.key?('ClientContractId') ? hash['ClientContractId'] : nil
      suspension_type =
        hash.key?('SuspensionType') ? hash['SuspensionType'] : SKIP
      suspension_start = if hash.key?('SuspensionStart')
                           (DateTimeHelper.from_rfc3339(hash['SuspensionStart']) if hash['SuspensionStart'])
                         else
                           SKIP
                         end
      duration = hash.key?('Duration') ? hash['Duration'] : SKIP
      duration_unit = hash.key?('DurationUnit') ? hash['DurationUnit'] : SKIP
      open_ended = hash.key?('OpenEnded') ? hash['OpenEnded'] : SKIP
      suspension_notes =
        hash.key?('SuspensionNotes') ? hash['SuspensionNotes'] : SKIP
      suspension_fee = hash.key?('SuspensionFee') ? hash['SuspensionFee'] : SKIP

      # Create object from extracted values.
      SuspendContractRequest.new(client_id,
                                 client_contract_id,
                                 suspension_type,
                                 suspension_start,
                                 duration,
                                 duration_unit,
                                 open_ended,
                                 suspension_notes,
                                 suspension_fee)
    end

    def to_custom_suspension_start
      DateTimeHelper.to_rfc3339(suspension_start)
    end
  end
end
