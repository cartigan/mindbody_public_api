# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # AddAppointmentResponse Model.
  class AddAppointmentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contains information about an appointment.
    # @return [Appointment]
    attr_accessor :appointment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['appointment'] = 'Appointment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        appointment
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(appointment = SKIP)
      @appointment = appointment unless appointment == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      appointment = Appointment.from_hash(hash['Appointment']) if hash['Appointment']

      # Create object from extracted values.
      AddAppointmentResponse.new(appointment)
    end
  end
end
