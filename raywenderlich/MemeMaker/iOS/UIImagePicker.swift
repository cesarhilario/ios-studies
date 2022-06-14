import SwiftUI

struct UIImagePicker: UIViewControllerRepresentable {
  class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    let parent: UIImagePicker

    init(_ parent: UIImagePicker) {
      self.parent = parent
    }

    func imagePickerController(
      _ picker: UIImagePickerController,
      didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]
    ) {
      if let uiImage = info[.originalImage] as? UIImage {
        parent.image = uiImage
      }

      parent.presentationMode.wrappedValue.dismiss()
    }
  }

  @Environment(\.presentationMode) var presentationMode
  @Binding var image: UIImage?

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  func makeUIViewController(
    context: UIViewControllerRepresentableContext<UIImagePicker>
  ) -> UIImagePickerController {
    let picker = UIImagePickerController()
    picker.delegate = context.coordinator
    return picker
  }

  func updateUIViewController(
    _ uiViewController: UIImagePickerController,
    context: UIViewControllerRepresentableContext<UIImagePicker>
  ) {
  }
}
