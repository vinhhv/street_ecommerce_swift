import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kLblStreetStyle)
                    .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(23.0))
                HStack {
                    Image("img_search")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Image("img_group_86")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(24.0))
                    Image("img_group_84")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(24.0))
                }
                .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.horizontal, getRelativeWidth(23.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(55.0),
                   alignment: .leading)
            VStack {
                VStack {
                    Divider()
                        .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                    Text(StringConstants.kMsgBigSeasonalSale)
                        .font(FontScheme
                            .kPlayfairDisplayItalicRegular(size: getRelativeHeight(50.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(173.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(36.0))
                        .padding(.trailing, getRelativeWidth(17.0))
                    Text(StringConstants.kLblSaveUpTo)
                        .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(16.0))
                    Text(StringConstants.kLbl75)
                        .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(36.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(48.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(13.0))
                    Divider()
                        .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(406.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                           bottomRight: 30.0)
                        .fill())
                Text(StringConstants.kLblBestsellers)
                    .font(FontScheme.kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(54.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(47.0))
                    .padding(.leading, getRelativeWidth(63.0))
                Text(StringConstants.kMsgFuelYourWorkout)
                    .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(294.0), height: getRelativeHeight(42.0),
                           alignment: .center)
                    .padding(.bottom, getRelativeHeight(5.0))
                    .padding(.horizontal, getRelativeWidth(19.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(793.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(849.0))
        .hideNavigationBar()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
