# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # A session level.
  class Level < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains the Id given to this level.
    # @return [Integer]
    attr_accessor :id

    # Contains the name given to this level.
    # @return [String]
    attr_accessor :name

    # Contains a description of this level.
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['name'] = 'Name'
      @_hash['description'] = 'Description'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        description
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, name = SKIP, description = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP

      # Create object from extracted values.
      Level.new(id,
                name,
                description)
    end
  end
end
