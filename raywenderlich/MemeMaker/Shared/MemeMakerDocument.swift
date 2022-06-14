import SwiftUI
import UniformTypeIdentifiers

extension UTType {
  static let memeDocument = UTType(exportedAs: "com.raywenderlich.MemeMaker.meme")
}

struct MemeMakerDocument: FileDocument {
  var meme: Meme

  init(imageData: Data? = nil, topText: String = "Top Text", bottomText: String = "Bottom Text") {
    self.meme = Meme(imageData: imageData, topText: topText, bottomText: bottomText)
  }

  static var readableContentTypes: [UTType] { [.memeDocument] }

  init(configuration: ReadConfiguration) throws {
    guard let data = configuration.file.regularFileContents else {
      throw CocoaError(.fileReadCorruptFile)
    }
    meme = try JSONDecoder().decode(Meme.self, from: data)
  }

  func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
    let data = try JSONEncoder().encode(meme)
    return .init(regularFileWithContents: data)
  }
}
