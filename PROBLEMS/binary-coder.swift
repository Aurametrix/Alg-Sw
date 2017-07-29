struct S {
        var a: Int16
        var b: Int32
        var c: Int64
    }
 // serializes fields by as raw bytes with no metadata 
  
 public protocol BinaryEncodable: Encodable {
        func binaryEncode(to encoder: BinaryEncoder) throws
    }

    public protocol BinaryDecodable: Decodable {
        init(fromBinary decoder: BinaryDecoder) throws
    }

    public typealias BinaryCodable = BinaryEncodable & BinaryDecodable

public extension BinaryEncodable {
        func binaryEncode(to encoder: BinaryEncoder) throws {
            try self.encode(to: encoder)
        }
    }

    public extension BinaryDecodable {
        public init(fromBinary decoder: BinaryDecoder) throws {
            try self.init(from: decoder)
        }
    }
