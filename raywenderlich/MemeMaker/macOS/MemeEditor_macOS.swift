import SwiftUI

struct MemeEditor: View {
  @Binding var meme: Meme

  func selectImage() {
    NSOpenPanel.openImage { result in
      guard case let .success(image) = result else { return }
      meme.imageData = image.data
    }
  }

  var body: some View {
    VStack {
      if meme.imageData != nil {
        TextLayer(meme: $meme) {
          ImageLayer(imageData: $meme.imageData)
        }
      }

      Button(action: selectImage) {
        Text("Add Image")
      }
      .padding()
    }
    .frame(minWidth: 500, minHeight: 500)
  }
}

struct MemeEditor_Previews: PreviewProvider {
  @State static var meme = Meme(
    imageData: nil,
    topText: "Top Text",
    bottomText: "Bottom Text"
  )

  static var previews: some View {
    MemeEditor(meme: $meme)
  }
}
