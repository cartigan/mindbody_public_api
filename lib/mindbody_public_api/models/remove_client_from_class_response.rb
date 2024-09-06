# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # RemoveClientFromClassResponse Model.
  class RemoveClientFromClassResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Represents a single class instance. The class meets at the start time,
    # goes until the end time.
    # @return [Class]
    attr_accessor :mclass

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mclass'] = 'Class'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mclass
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(mclass = SKIP)
      @mclass = mclass unless mclass == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mclass = Class.from_hash(hash['Class']) if hash['Class']

      # Create object from extracted values.
      RemoveClientFromClassResponse.new(mclass)
    end
  end
end
