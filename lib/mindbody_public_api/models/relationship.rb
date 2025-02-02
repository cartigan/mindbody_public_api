# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Jim is a RelationshipName1 of John. John is a RelationshipName2 of Jim.
  class Relationship < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the relationship.
    # @return [Integer]
    attr_accessor :id

    # The name of the first relationship.
    # @return [String]
    attr_accessor :relationship_name1

    # The name of the second relationship.
    # @return [String]
    attr_accessor :relationship_name2

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['relationship_name1'] = 'RelationshipName1'
      @_hash['relationship_name2'] = 'RelationshipName2'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        relationship_name1
        relationship_name2
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, relationship_name1 = SKIP,
                   relationship_name2 = SKIP)
      @id = id unless id == SKIP
      @relationship_name1 = relationship_name1 unless relationship_name1 == SKIP
      @relationship_name2 = relationship_name2 unless relationship_name2 == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      relationship_name1 =
        hash.key?('RelationshipName1') ? hash['RelationshipName1'] : SKIP
      relationship_name2 =
        hash.key?('RelationshipName2') ? hash['RelationshipName2'] : SKIP

      # Create object from extracted values.
      Relationship.new(id,
                       relationship_name1,
                       relationship_name2)
    end
  end
end
