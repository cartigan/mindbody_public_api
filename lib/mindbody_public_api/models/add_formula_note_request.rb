# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # AddFormulaNoteRequest Model.
  class AddFormulaNoteRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the client who needs to have a formula note added.
    # @return [String]
    attr_accessor :client_id

    # The appointment ID that the formula note is related to.
    # @return [Integer]
    attr_accessor :appointment_id

    # The new formula note text.
    # @return [String]
    attr_accessor :note

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_id'] = 'ClientId'
      @_hash['appointment_id'] = 'AppointmentId'
      @_hash['note'] = 'Note'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        appointment_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(client_id = nil, note = nil, appointment_id = SKIP)
      @client_id = client_id
      @appointment_id = appointment_id unless appointment_id == SKIP
      @note = note
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_id = hash.key?('ClientId') ? hash['ClientId'] : nil
      note = hash.key?('Note') ? hash['Note'] : nil
      appointment_id = hash.key?('AppointmentId') ? hash['AppointmentId'] : SKIP

      # Create object from extracted values.
      AddFormulaNoteRequest.new(client_id,
                                note,
                                appointment_id)
    end
  end
end
