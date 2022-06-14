import SwiftUI

struct ContentView: View {
  @Binding var document: MemeMakerDocument

  var body: some View {
    MemeEditor(meme: $document.meme)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(document: .constant(MemeMakerDocument()))
  }
}
