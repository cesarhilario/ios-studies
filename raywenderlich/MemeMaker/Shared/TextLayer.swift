import SwiftUI

struct TextLayer<ImageContent: View>: View {
  @Binding var meme: Meme
  let imageContent: () -> ImageContent

  var body: some View {
    ZStack(alignment: .bottom) {
      ZStack(alignment: .top) {
        imageContent()
        MemeTextField(text: $meme.topText)
      }

      MemeTextField(text: $meme.bottomText)
    }
  }
}

struct TextLayer_Previews: PreviewProvider {
  @State static var meme = Meme(
    imageData: nil,
    topText: "Top Text Test",
    bottomText: "Bottom Text Test"
  )

  static var previews: some View {
    TextLayer(meme: $meme) {
      Text("IMAGE")
        .frame(height: 100)
    }
  }
}
