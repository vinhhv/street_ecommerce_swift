import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kPlayfairDisplaySemiBoldItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplaySemiBoldItalic, size: size)
    }

    static func kPlayfairDisplayBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplayBold, size: size)
    }

    static func kPlayfairDisplayItalicRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplayItalicRegular, size: size)
    }

    static func kPlayfairDisplayMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplayMedium, size: size)
    }

    static func kPlayfairDisplayExtraBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplayExtraBold, size: size)
    }

    static func kPlayfairDisplayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplayRegular, size: size)
    }

    static func kPlayfairDisplayRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPlayfairDisplayRomanBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kPlayfairDisplaySemiBoldItalic":
            result = self.kPlayfairDisplaySemiBoldItalic(size: size)
        case "kPlayfairDisplayBold":
            result = self.kPlayfairDisplayBold(size: size)
        case "kPlayfairDisplayItalicRegular":
            result = self.kPlayfairDisplayItalicRegular(size: size)
        case "kPlayfairDisplayMedium":
            result = self.kPlayfairDisplayMedium(size: size)
        case "kPlayfairDisplayExtraBold":
            result = self.kPlayfairDisplayExtraBold(size: size)
        case "kPlayfairDisplayRegular":
            result = self.kPlayfairDisplayRegular(size: size)
        case "kPlayfairDisplayRomanBold":
            result = self.kPlayfairDisplayRomanBold(size: size)
        default:
            result = self.kPlayfairDisplaySemiBoldItalic(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplaySemiBoldItalic: String = "PlayfairDisplaySemiBoldItalic"
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplayBold: String = "PlayfairDisplayBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplayItalicRegular: String = "PlayfairDisplayItalic-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplayMedium: String = "PlayfairDisplayMedium"
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplayExtraBold: String = "PlayfairDisplayExtraBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplayRegular: String = "PlayfairDisplayRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kPlayfairDisplayRomanBold: String = "PlayfairDisplayRoman-Bold"
    }
}
