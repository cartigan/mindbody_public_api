# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # Location Model.
  class Location < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A list of URLs of any images associated with this location.
    # @return [Array[String]]
    attr_accessor :additional_image_ur_ls

    # The first line of the location’s street address.
    # @return [String]
    attr_accessor :address

    # A second address line for the location’s street address, if needed.
    # @return [String]
    attr_accessor :address2

    # A list of strings representing amenities available at the location.
    # @return [Array[Amenity]]
    attr_accessor :amenities

    # The business description for the location, as configured by the business
    # owner.
    # @return [String]
    attr_accessor :business_description

    # The location’s city.
    # @return [String]
    attr_accessor :city

    # A description of the location.
    # @return [String]
    attr_accessor :description

    # When `true`, indicates that classes are held at this location.<br />
    # When `false`, Indicates that classes are not held at this location.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_classes

    # The ID assigned to this location.
    # @return [Integer]
    attr_accessor :id

    # The location’s latitude.
    # @return [Float]
    attr_accessor :latitude

    # The location’s longitude.
    # @return [Float]
    attr_accessor :longitude

    # The name of this location.
    # @return [String]
    attr_accessor :name

    # The location’s phone number.
    # @return [String]
    attr_accessor :phone

    # The location’s phone extension.
    # @return [String]
    attr_accessor :phone_extension

    # The location’s postal code.
    # @return [String]
    attr_accessor :postal_code

    # The ID number assigned to this location.
    # @return [Integer]
    attr_accessor :site_id

    # The location’s state or province code.
    # @return [String]
    attr_accessor :state_prov_code

    # A decimal representation of the location’s first tax rate. Tax properties
    # are provided to apply all taxes to the purchase price that the purchase is
    # subject to. Use as many tax properties as needed to represent all the
    # taxes that apply in the location. Enter a decimal number that represents
    # the appropriate tax rate. For example, for an 8% sales tax, enter 0.08.
    # @return [Float]
    attr_accessor :tax1

    # A decimal representation of the location’s second tax rate. See the
    # example in the description of Tax1.
    # @return [Float]
    attr_accessor :tax2

    # A decimal representation of the location’s third tax rate. See the example
    # in the description of Tax1.
    # @return [Float]
    attr_accessor :tax3

    # A decimal representation of the location’s fourth tax rate. See the
    # example in the description of Tax1.
    # @return [Float]
    attr_accessor :tax4

    # A decimal representation of the location’s fifth tax rate. See the example
    # in the description of Tax1.
    # @return [Float]
    attr_accessor :tax5

    # The number of reviews that clients have left for this location.
    # @return [Integer]
    attr_accessor :total_number_of_ratings

    # The average rating for the location, out of five stars.
    # @return [Float]
    attr_accessor :average_rating

    # The number of distinct introductory pricing options available for purchase
    # at this location.
    # @return [Integer]
    attr_accessor :total_number_of_deals

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['additional_image_ur_ls'] = 'AdditionalImageURLs'
      @_hash['address'] = 'Address'
      @_hash['address2'] = 'Address2'
      @_hash['amenities'] = 'Amenities'
      @_hash['business_description'] = 'BusinessDescription'
      @_hash['city'] = 'City'
      @_hash['description'] = 'Description'
      @_hash['has_classes'] = 'HasClasses'
      @_hash['id'] = 'Id'
      @_hash['latitude'] = 'Latitude'
      @_hash['longitude'] = 'Longitude'
      @_hash['name'] = 'Name'
      @_hash['phone'] = 'Phone'
      @_hash['phone_extension'] = 'PhoneExtension'
      @_hash['postal_code'] = 'PostalCode'
      @_hash['site_id'] = 'SiteID'
      @_hash['state_prov_code'] = 'StateProvCode'
      @_hash['tax1'] = 'Tax1'
      @_hash['tax2'] = 'Tax2'
      @_hash['tax3'] = 'Tax3'
      @_hash['tax4'] = 'Tax4'
      @_hash['tax5'] = 'Tax5'
      @_hash['total_number_of_ratings'] = 'TotalNumberOfRatings'
      @_hash['average_rating'] = 'AverageRating'
      @_hash['total_number_of_deals'] = 'TotalNumberOfDeals'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        additional_image_ur_ls
        address
        address2
        amenities
        business_description
        city
        description
        has_classes
        id
        latitude
        longitude
        name
        phone
        phone_extension
        postal_code
        site_id
        state_prov_code
        tax1
        tax2
        tax3
        tax4
        tax5
        total_number_of_ratings
        average_rating
        total_number_of_deals
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(additional_image_ur_ls = SKIP, address = SKIP,
                   address2 = SKIP, amenities = SKIP,
                   business_description = SKIP, city = SKIP, description = SKIP,
                   has_classes = SKIP, id = SKIP, latitude = SKIP,
                   longitude = SKIP, name = SKIP, phone = SKIP,
                   phone_extension = SKIP, postal_code = SKIP, site_id = SKIP,
                   state_prov_code = SKIP, tax1 = SKIP, tax2 = SKIP,
                   tax3 = SKIP, tax4 = SKIP, tax5 = SKIP,
                   total_number_of_ratings = SKIP, average_rating = SKIP,
                   total_number_of_deals = SKIP)
      @additional_image_ur_ls = additional_image_ur_ls unless additional_image_ur_ls == SKIP
      @address = address unless address == SKIP
      @address2 = address2 unless address2 == SKIP
      @amenities = amenities unless amenities == SKIP
      @business_description = business_description unless business_description == SKIP
      @city = city unless city == SKIP
      @description = description unless description == SKIP
      @has_classes = has_classes unless has_classes == SKIP
      @id = id unless id == SKIP
      @latitude = latitude unless latitude == SKIP
      @longitude = longitude unless longitude == SKIP
      @name = name unless name == SKIP
      @phone = phone unless phone == SKIP
      @phone_extension = phone_extension unless phone_extension == SKIP
      @postal_code = postal_code unless postal_code == SKIP
      @site_id = site_id unless site_id == SKIP
      @state_prov_code = state_prov_code unless state_prov_code == SKIP
      @tax1 = tax1 unless tax1 == SKIP
      @tax2 = tax2 unless tax2 == SKIP
      @tax3 = tax3 unless tax3 == SKIP
      @tax4 = tax4 unless tax4 == SKIP
      @tax5 = tax5 unless tax5 == SKIP
      @total_number_of_ratings = total_number_of_ratings unless total_number_of_ratings == SKIP
      @average_rating = average_rating unless average_rating == SKIP
      @total_number_of_deals = total_number_of_deals unless total_number_of_deals == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      additional_image_ur_ls =
        hash.key?('AdditionalImageURLs') ? hash['AdditionalImageURLs'] : SKIP
      address = hash.key?('Address') ? hash['Address'] : SKIP
      address2 = hash.key?('Address2') ? hash['Address2'] : SKIP
      # Parameter is an array, so we need to iterate through it
      amenities = nil
      unless hash['Amenities'].nil?
        amenities = []
        hash['Amenities'].each do |structure|
          amenities << (Amenity.from_hash(structure) if structure)
        end
      end

      amenities = SKIP unless hash.key?('Amenities')
      business_description =
        hash.key?('BusinessDescription') ? hash['BusinessDescription'] : SKIP
      city = hash.key?('City') ? hash['City'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP
      has_classes = hash.key?('HasClasses') ? hash['HasClasses'] : SKIP
      id = hash.key?('Id') ? hash['Id'] : SKIP
      latitude = hash.key?('Latitude') ? hash['Latitude'] : SKIP
      longitude = hash.key?('Longitude') ? hash['Longitude'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP
      phone = hash.key?('Phone') ? hash['Phone'] : SKIP
      phone_extension =
        hash.key?('PhoneExtension') ? hash['PhoneExtension'] : SKIP
      postal_code = hash.key?('PostalCode') ? hash['PostalCode'] : SKIP
      site_id = hash.key?('SiteID') ? hash['SiteID'] : SKIP
      state_prov_code =
        hash.key?('StateProvCode') ? hash['StateProvCode'] : SKIP
      tax1 = hash.key?('Tax1') ? hash['Tax1'] : SKIP
      tax2 = hash.key?('Tax2') ? hash['Tax2'] : SKIP
      tax3 = hash.key?('Tax3') ? hash['Tax3'] : SKIP
      tax4 = hash.key?('Tax4') ? hash['Tax4'] : SKIP
      tax5 = hash.key?('Tax5') ? hash['Tax5'] : SKIP
      total_number_of_ratings =
        hash.key?('TotalNumberOfRatings') ? hash['TotalNumberOfRatings'] : SKIP
      average_rating = hash.key?('AverageRating') ? hash['AverageRating'] : SKIP
      total_number_of_deals =
        hash.key?('TotalNumberOfDeals') ? hash['TotalNumberOfDeals'] : SKIP

      # Create object from extracted values.
      Location.new(additional_image_ur_ls,
                   address,
                   address2,
                   amenities,
                   business_description,
                   city,
                   description,
                   has_classes,
                   id,
                   latitude,
                   longitude,
                   name,
                   phone,
                   phone_extension,
                   postal_code,
                   site_id,
                   state_prov_code,
                   tax1,
                   tax2,
                   tax3,
                   tax4,
                   tax5,
                   total_number_of_ratings,
                   average_rating,
                   total_number_of_deals)
    end
  end
end
