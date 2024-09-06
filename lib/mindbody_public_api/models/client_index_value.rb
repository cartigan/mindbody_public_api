# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # A client index value.
  class ClientIndexValue < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # For this call, this value is always `false` and can be ignored.
    # When `false`, indicates that the index value has been deactivated and
    # cannot be assigned to its parent index.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # The index value’s ID.
    # @return [Integer]
    attr_accessor :id

    # The name of the client index value.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['active'] = 'Active'
      @_hash['id'] = 'Id'
      @_hash['name'] = 'Name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        active
        id
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(active = SKIP, id = SKIP, name = SKIP)
      @active = active unless active == SKIP
      @id = id unless id == SKIP
      @name = name unless name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      active = hash.key?('Active') ? hash['Active'] : SKIP
      id = hash.key?('Id') ? hash['Id'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP

      # Create object from extracted values.
      ClientIndexValue.new(active,
                           id,
                           name)
    end
  end
end
