# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # A custom client field
  class CustomClientField < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the custom client field.
    # @return [Integer]
    attr_accessor :id

    # The data type of the field.
    # @return [String]
    attr_accessor :data_type

    # The name of the field.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['data_type'] = 'DataType'
      @_hash['name'] = 'Name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        data_type
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, data_type = SKIP, name = SKIP)
      @id = id unless id == SKIP
      @data_type = data_type unless data_type == SKIP
      @name = name unless name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      data_type = hash.key?('DataType') ? hash['DataType'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP

      # Create object from extracted values.
      CustomClientField.new(id,
                            data_type,
                            name)
    end
  end
end
