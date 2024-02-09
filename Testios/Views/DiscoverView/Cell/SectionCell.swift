import SwiftUI

struct SectionCell: View {
    var body: some View {
        HStack {
            Text(StringConstants.kLblShirtSleeve)
                .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(84.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(32.0))
            Image("img_image_2")
                .resizable()
                .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(181.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(102.0))
        }
        .frame(width: getRelativeWidth(331.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                   bottomRight: 30.0))
        .hideNavigationBar()
    }
}

/* struct SectionCell_Previews: PreviewProvider {

 static var previews: some View {
 			SectionCell()
 }
 } */
