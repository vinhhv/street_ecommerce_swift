import SwiftUI

struct XCell: View {
    var body: some View {
        HStack {
            Image("img_rectangle_9_237x175")
                .resizable()
                .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(203.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                           bottomRight: 30.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(137.0),
                       alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgVertluneBoyfriend)
                    .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(46.0),
                           alignment: .leading)
                Text(StringConstants.kLblYellowSize8)
                    .font(FontScheme.kPlayfairDisplayRomanBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(36.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                Text(StringConstants.kLbl58)
                    .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(28.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(38.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(8.0))
            }
            .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(137.0),
                   alignment: .leading)
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(48.0),
                       alignment: .leading)
            Text(StringConstants.kLbl1x)
                .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(36.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(48.0),
                       alignment: .leading)
        }
        .frame(width: getRelativeWidth(336.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct XCell_Previews: PreviewProvider {

 static var previews: some View {
 			XCell()
 }
 } */
