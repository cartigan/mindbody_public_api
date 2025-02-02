# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetGendersResponse Model.
  class GetGendersResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A list of the gender options and their properties at the site
    # @return [Array[GenderOption]]
    attr_accessor :gender_options

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['gender_options'] = 'GenderOptions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        gender_options
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(gender_options = SKIP)
      @gender_options = gender_options unless gender_options == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      gender_options = nil
      unless hash['GenderOptions'].nil?
        gender_options = []
        hash['GenderOptions'].each do |structure|
          gender_options << (GenderOption.from_hash(structure) if structure)
        end
      end

      gender_options = SKIP unless hash.key?('GenderOptions')

      # Create object from extracted values.
      GetGendersResponse.new(gender_options)
    end
  end
end
