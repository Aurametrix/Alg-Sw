enum SchemaType: String, Codable {
  case officeDocument = "[...]/officeDocument"
  case extendedProperties = "[...]/extended-properties"
  case coreProperties = "[...]/core-properties"
  case worksheet = "[...]/worksheet"
  case sharedStrings = "[...]/sharedStrings"
  case styles = "[...]/styles"
  case theme = "[...]/theme"
}
