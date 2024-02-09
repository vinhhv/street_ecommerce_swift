import SwiftUI

struct CardCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_rectangle_9")
                .resizable()
                .frame(width: getRelativeWidth(173.0), height: getRelativeHeight(237.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                           bottomRight: 30.0))
            Text(StringConstants.kLblSurgeShort)
                .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(15.0))
            Text(StringConstants.kLbl68Usd)
                .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(5.0))
        }
        .frame(width: getRelativeWidth(173.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct CardCell_Previews: PreviewProvider {

 static var previews: some View {
 			CardCell()
 }
 } */
