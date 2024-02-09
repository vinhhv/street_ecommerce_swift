import Foundation
import SwiftUI

class ProductViewModel: ObservableObject {
    struct TutorialItem: Identifiable {
        let id: UUID = .init()
        let index: Int
    }

    @Published var nextScreen: String? = nil
    @Published var sliderCurrentPage: Int = 0
    @Published var sliderData: [TutorialItem] = [
        TutorialItem(index: 0), TutorialItem(index: 1), TutorialItem(index: 2),
        TutorialItem(index: 3),
        TutorialItem(index: 4), TutorialItem(index: 5), TutorialItem(index: 6),
        TutorialItem(index: 7),
        TutorialItem(index: 8)
    ]
}
