# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # A specific amenity at a location
  class Amenity1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The identifying ID of the amenity.
    # @return [Integer]
    attr_accessor :id

    # The name of the amenity (e.g. "Lockers" or "Food/Drink").
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['name'] = 'Name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, name = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP

      # Create object from extracted values.
      Amenity1.new(id,
                   name)
    end
  end
end
