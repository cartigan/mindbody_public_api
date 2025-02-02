# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetResourcesResponse Model.
  class GetResourcesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Resource1]]
    attr_accessor :resources

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['resources'] = 'Resources'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        resources
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(resources = SKIP)
      @resources = resources unless resources == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      resources = nil
      unless hash['Resources'].nil?
        resources = []
        hash['Resources'].each do |structure|
          resources << (Resource1.from_hash(structure) if structure)
        end
      end

      resources = SKIP unless hash.key?('Resources')

      # Create object from extracted values.
      GetResourcesResponse.new(resources)
    end
  end
end
