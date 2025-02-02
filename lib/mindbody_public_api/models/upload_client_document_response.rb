# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # UploadClientDocumentResponse Model.
  class UploadClientDocumentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The size of the uploaded file.
    # @return [Integer]
    attr_accessor :file_size

    # The name of the uploaded file.
    # @return [String]
    attr_accessor :file_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file_size'] = 'FileSize'
      @_hash['file_name'] = 'FileName'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        file_size
        file_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(file_size = SKIP, file_name = SKIP)
      @file_size = file_size unless file_size == SKIP
      @file_name = file_name unless file_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file_size = hash.key?('FileSize') ? hash['FileSize'] : SKIP
      file_name = hash.key?('FileName') ? hash['FileName'] : SKIP

      # Create object from extracted values.
      UploadClientDocumentResponse.new(file_size,
                                       file_name)
    end
  end
end
