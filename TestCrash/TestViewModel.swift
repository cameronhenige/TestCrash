

import Foundation

class TestViewModel: NSObject, ObservableObject {
    
    @Published var images: [String] = ["dog", "cat", "bird"]
    
    func removeFirst() {
        images.remove(at: 0)
    }
}
