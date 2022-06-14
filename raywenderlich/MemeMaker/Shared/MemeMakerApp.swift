import SwiftUI

@main
struct MemeMakerApp: App {
  var body: some Scene {
    DocumentGroup(newDocument: MemeMakerDocument()) { file in
      ContentView(document: file.$document)
    }
  }
}
