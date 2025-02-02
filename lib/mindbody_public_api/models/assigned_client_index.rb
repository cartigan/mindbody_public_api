# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Represents a client index value assigned to a client
  class AssignedClientIndex < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The index ID assigned to the client.
    # @return [Integer]
    attr_accessor :id

    # The index’s value ID.
    # @return [Integer]
    attr_accessor :value_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['value_id'] = 'ValueId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        value_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, value_id = SKIP)
      @id = id unless id == SKIP
      @value_id = value_id unless value_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      value_id = hash.key?('ValueId') ? hash['ValueId'] : SKIP

      # Create object from extracted values.
      AssignedClientIndex.new(id,
                              value_id)
    end
  end
end
