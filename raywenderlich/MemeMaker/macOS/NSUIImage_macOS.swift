import AppKit
import SwiftUI

public typealias NSUIImage = NSImage

extension NSUIImage {
  var data: Data? {
    return self.tiffRepresentation
  }

  static func image(fromData data: Data) -> Image {
    return Image(nsImage: NSImage(data: data) ?? NSImage())
  }
}
