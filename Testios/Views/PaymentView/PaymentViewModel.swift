import Foundation
import SwiftUI

class PaymentViewModel: ObservableObject {
    struct TutorialItem: Identifiable {
        let id: UUID = .init()
        let index: Int
    }

    @Published var cardsliderCurrentPage: Int = 0
    @Published var sliderData: [TutorialItem] = [
        TutorialItem(index: 0), TutorialItem(index: 1)
    ]

    @Published var applepayText: String = ""
}
