import SwiftUI

struct MemeEditor: View {
  @Binding var meme: Meme
  @State var showingImagePicker = false
  @State private var inputImage: NSUIImage?

  func loadImage() {
    guard let inputImage = inputImage else { return }
    meme.imageData = inputImage.data
  }

  var body: some View {
    TextLayer(meme: $meme) {
      Button {
        showingImagePicker = true
      } label: {
        if meme.imageData != nil {
          ImageLayer(imageData: $meme.imageData)
        } else {
          Text("Add Image")
            .foregroundColor(.white)
            .padding()
            .background(Color("rw-green"))
            .cornerRadius(30)
            .padding(.vertical, 50)
        }
      }
    }
    .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
      UIImagePicker(image: self.$inputImage)
    }
  }
}

struct MemeEditor_Previews: PreviewProvider {
  @State static var meme = Meme(
    imageData: nil,
    topText: "Top Text Test",
    bottomText: "Bottom Text Test"
  )

  static var previews: some View {
    MemeEditor(meme: $meme)
  }
}
