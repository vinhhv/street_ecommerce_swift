import SwiftUI

struct Card1Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_rectangle_12")
                .resizable()
                .frame(width: getRelativeWidth(173.0), height: getRelativeHeight(180.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                           bottomRight: 30.0))
            Text(StringConstants.kLblBoxTee)
                .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(14.0))
        }
        .frame(width: getRelativeWidth(173.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Card1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Card1Cell()
 }
 } */
