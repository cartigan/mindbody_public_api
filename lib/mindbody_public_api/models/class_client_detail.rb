# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Class Client Detail Object
  class ClassClientDetail < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The RSSID of the clients to remove from the specified classes.
    # @return [Array[String]]
    attr_accessor :client_ids

    # The ID of the classes that you want to remove the clients from.
    # @return [Integer]
    attr_accessor :class_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_ids'] = 'ClientIds'
      @_hash['class_id'] = 'ClassId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_ids = nil, class_id = nil)
      @client_ids = client_ids
      @class_id = class_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_ids = hash.key?('ClientIds') ? hash['ClientIds'] : nil
      class_id = hash.key?('ClassId') ? hash['ClassId'] : nil

      # Create object from extracted values.
      ClassClientDetail.new(client_ids,
                            class_id)
    end
  end
end
