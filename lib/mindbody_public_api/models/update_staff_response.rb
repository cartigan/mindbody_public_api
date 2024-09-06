# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # UpdateStaffResponse Model.
  class UpdateStaffResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Staff
    # @return [Staff]
    attr_accessor :staff

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['staff'] = 'Staff'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        staff
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(staff = SKIP)
      @staff = staff unless staff == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      staff = Staff.from_hash(hash['Staff']) if hash['Staff']

      # Create object from extracted values.
      UpdateStaffResponse.new(staff)
    end
  end
end
