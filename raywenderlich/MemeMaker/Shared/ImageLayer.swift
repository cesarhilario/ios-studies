import SwiftUI

struct ImageLayer: View {
  @Binding var imageData: Data?

  var body: some View {
    NSUIImage.image(fromData: imageData ?? Data())
      .resizable()
      .aspectRatio(contentMode: .fit)
  }
}

struct ImageLayer_Previews: PreviewProvider {
  // swiftlint:disable:next force_unwrapping
  static let imageData = NSUIImage(named: "AppIcon")!.data

  static var previews: some View {
    ImageLayer(imageData: .constant(imageData))
      .previewLayout(.fixed(width: 100, height: 100))
  }
}
