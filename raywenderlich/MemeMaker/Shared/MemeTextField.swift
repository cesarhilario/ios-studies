import SwiftUI

struct MemeTextField: View {
  @Binding var text: String

  var body: some View {
    TextField(text, text: $text)
      .multilineTextAlignment(.center)
      .lineLimit(nil)
      .foregroundColor(.black)
      .font(Font.system(size: 25, weight: .bold))
      .textCase(.uppercase)
  }
}

struct MemeTextField_Previews: PreviewProvider {
  static var previews: some View {
    MemeTextField(text: .constant("This is some Text"))
  }
}
