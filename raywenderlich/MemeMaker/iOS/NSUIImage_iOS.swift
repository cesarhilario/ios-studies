import UIKit
import SwiftUI

public typealias NSUIImage = UIImage

extension NSUIImage {
  var data: Data? {
    return self.pngData()
  }

  static func image(fromData data: Data) -> Image {
    return Image(uiImage: UIImage(data: data) ?? UIImage())
  }
}
