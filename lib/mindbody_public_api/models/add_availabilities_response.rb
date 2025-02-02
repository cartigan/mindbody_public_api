# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Add Availabilities Response Model
  class AddAvailabilitiesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about the staff.
    # @return [Array[Staff1]]
    attr_accessor :staff_members

    # Contains information about the error.
    # @return [Array[ApiError1]]
    attr_accessor :errors

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['staff_members'] = 'StaffMembers'
      @_hash['errors'] = 'Errors'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        staff_members
        errors
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(staff_members = SKIP, errors = SKIP)
      @staff_members = staff_members unless staff_members == SKIP
      @errors = errors unless errors == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      staff_members = nil
      unless hash['StaffMembers'].nil?
        staff_members = []
        hash['StaffMembers'].each do |structure|
          staff_members << (Staff1.from_hash(structure) if structure)
        end
      end

      staff_members = SKIP unless hash.key?('StaffMembers')
      # Parameter is an array, so we need to iterate through it
      errors = nil
      unless hash['Errors'].nil?
        errors = []
        hash['Errors'].each do |structure|
          errors << (ApiError1.from_hash(structure) if structure)
        end
      end

      errors = SKIP unless hash.key?('Errors')

      # Create object from extracted values.
      AddAvailabilitiesResponse.new(staff_members,
                                    errors)
    end
  end
end
