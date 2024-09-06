# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetLiabilityWaiverResponse Model.
  class GetLiabilityWaiverResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains Liability Waiver text for a site
    # @return [String]
    attr_accessor :liability_waiver

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['liability_waiver'] = 'LiabilityWaiver'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        liability_waiver
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(liability_waiver = SKIP)
      @liability_waiver = liability_waiver unless liability_waiver == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      liability_waiver =
        hash.key?('LiabilityWaiver') ? hash['LiabilityWaiver'] : SKIP

      # Create object from extracted values.
      GetLiabilityWaiverResponse.new(liability_waiver)
    end
  end
end
