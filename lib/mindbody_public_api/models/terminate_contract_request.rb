# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # TerminateContractRequest Model.
  class TerminateContractRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the client.
    # @return [String]
    attr_accessor :client_id

    # The unique ID of the sale of the contract
    # @return [Integer]
    attr_accessor :client_contract_id

    # The contract termination date.
    # @return [DateTime]
    attr_accessor :termination_date

    # ex. Illness, Injury, Moving, BreakingContract (Note this can be customized
    # by each studio).
    # @return [String]
    attr_accessor :termination_code

    # The comments for terminating a contract.
    # @return [String]
    attr_accessor :termination_comments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_id'] = 'ClientId'
      @_hash['client_contract_id'] = 'ClientContractId'
      @_hash['termination_date'] = 'TerminationDate'
      @_hash['termination_code'] = 'TerminationCode'
      @_hash['termination_comments'] = 'TerminationComments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        termination_code
        termination_comments
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_id = nil, client_contract_id = nil,
                   termination_date = nil, termination_code = SKIP,
                   termination_comments = SKIP)
      @client_id = client_id
      @client_contract_id = client_contract_id
      @termination_date = termination_date
      @termination_code = termination_code unless termination_code == SKIP
      @termination_comments = termination_comments unless termination_comments == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_id = hash.key?('ClientId') ? hash['ClientId'] : nil
      client_contract_id =
        hash.key?('ClientContractId') ? hash['ClientContractId'] : nil
      termination_date = if hash.key?('TerminationDate')
                           (DateTimeHelper.from_rfc3339(hash['TerminationDate']) if hash['TerminationDate'])
                         end
      termination_code =
        hash.key?('TerminationCode') ? hash['TerminationCode'] : SKIP
      termination_comments =
        hash.key?('TerminationComments') ? hash['TerminationComments'] : SKIP

      # Create object from extracted values.
      TerminateContractRequest.new(client_id,
                                   client_contract_id,
                                   termination_date,
                                   termination_code,
                                   termination_comments)
    end

    def to_custom_termination_date
      DateTimeHelper.to_rfc3339(termination_date)
    end
  end
end
