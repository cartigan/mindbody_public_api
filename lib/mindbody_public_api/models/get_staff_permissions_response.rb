# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # GetStaffPermissionsResponse Model.
  class GetStaffPermissionsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [StaffPermissionGroup]
    attr_accessor :user_group

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['user_group'] = 'UserGroup'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        user_group
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(user_group = SKIP)
      @user_group = user_group unless user_group == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      user_group = StaffPermissionGroup.from_hash(hash['UserGroup']) if hash['UserGroup']

      # Create object from extracted values.
      GetStaffPermissionsResponse.new(user_group)
    end
  end
end
