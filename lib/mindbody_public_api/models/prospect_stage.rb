# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # ProspectStage Model.
  class ProspectStage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # When `true`, indicates that the client is a prospect at the business and
    # has not yet purchased any of the business pricing options.
    # When `false`, indicates that the client has already purchased at least one
    # pricing option from the business.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A description of the prospect stage.
    # @return [String]
    attr_accessor :description

    # The ID of the prospect stage assigned to the client.
    # @return [Integer]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['active'] = 'Active'
      @_hash['description'] = 'Description'
      @_hash['id'] = 'Id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        active
        description
        id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(active = SKIP, description = SKIP, id = SKIP)
      @active = active unless active == SKIP
      @description = description unless description == SKIP
      @id = id unless id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      active = hash.key?('Active') ? hash['Active'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP
      id = hash.key?('Id') ? hash['Id'] : SKIP

      # Create object from extracted values.
      ProspectStage.new(active,
                        description,
                        id)
    end
  end
end
