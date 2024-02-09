//
// ViewportHelper.swift
//

import Foundation
import UIKit

func getRelativeHeight(_ size: CGFloat) -> CGFloat {
    return (size * (CGFloat(UIScreen.main.bounds.height) / 896.0)) * 0.97
}

func getRelativeWidth(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 414.0)
}

func getRelativeFontSize(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 414.0)
}
