# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MindbodyPublicApi
  # Tip Model.
  class Tip < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the staff member the tip is for.
    # @return [Integer]
    attr_accessor :staff_id

    # The sale’s ID associated with the tip.
    # @return [Integer]
    attr_accessor :sale_id

    # The date and time when the tip was given.
    # @return [DateTime]
    attr_accessor :sale_date_time

    # The amount tipped to the staff member.
    # @return [Float]
    attr_accessor :earnings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['staff_id'] = 'StaffId'
      @_hash['sale_id'] = 'SaleId'
      @_hash['sale_date_time'] = 'SaleDateTime'
      @_hash['earnings'] = 'Earnings'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        staff_id
        sale_id
        sale_date_time
        earnings
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(staff_id = SKIP, sale_id = SKIP, sale_date_time = SKIP,
                   earnings = SKIP)
      @staff_id = staff_id unless staff_id == SKIP
      @sale_id = sale_id unless sale_id == SKIP
      @sale_date_time = sale_date_time unless sale_date_time == SKIP
      @earnings = earnings unless earnings == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      staff_id = hash.key?('StaffId') ? hash['StaffId'] : SKIP
      sale_id = hash.key?('SaleId') ? hash['SaleId'] : SKIP
      sale_date_time = if hash.key?('SaleDateTime')
                         (DateTimeHelper.from_rfc3339(hash['SaleDateTime']) if hash['SaleDateTime'])
                       else
                         SKIP
                       end
      earnings = hash.key?('Earnings') ? hash['Earnings'] : SKIP

      # Create object from extracted values.
      Tip.new(staff_id,
              sale_id,
              sale_date_time,
              earnings)
    end

    def to_custom_sale_date_time
      DateTimeHelper.to_rfc3339(sale_date_time)
    end
  end
end
