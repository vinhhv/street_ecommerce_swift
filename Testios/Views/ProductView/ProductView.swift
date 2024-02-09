import SwiftUI

struct ProductView: View {
    @StateObject var productViewModel = ProductViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_arrow_down")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(28.0))
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
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblBoyfriendTee)
                        .font(FontScheme
                            .kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(236.0), height: getRelativeHeight(54.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(22.0))
                    FSPagerViewSUI($productViewModel.sliderCurrentPage,
                                   productViewModel.sliderData) { item in
                        Image("img_rectangle_14")
                            .resizable()
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(400.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 30.0, topRight: 30.0,
                                                       bottomLeft: 30.0, bottomRight: 30.0))
                    }
                    HStack {
                        Text(StringConstants.kLblS)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(17.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(46.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                        Text(StringConstants.kLblM)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(13.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(46.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0))
                            .shadow(radius: 35)
                            .padding(.leading, getRelativeWidth(9.0))
                        Text(StringConstants.kLblL)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(16.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(46.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(9.0))
                        Text(StringConstants.kLblXl)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                            .fontWeight(.medium)
                            .padding(.horizontal, getRelativeWidth(8.0))
                            .padding(.vertical, getRelativeHeight(6.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(9.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(46.0))
                        Image("img_settings")
                            .resizable()
                            .frame(width: getRelativeWidth(33.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLbl1)
                            .font(FontScheme.kPlayfairDisplayRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(18.0))
                            .padding(.vertical, getRelativeHeight(13.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .overlay(RoundedCorners()
                                .stroke(Color.clear.opacity(0.7), lineWidth: 1))
                            .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                        Image("img_plus_black_900")
                            .resizable()
                            .frame(width: getRelativeWidth(33.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(46.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(41.0))
                    .padding(.leading, getRelativeWidth(22.0))
                    .padding(.trailing, getRelativeWidth(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(713.0),
                       alignment: .center)
                VStack {
                    Text(StringConstants.kLblAddToCart)
                        .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(22.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(30.0),
                               alignment: .topLeading)
                    Image("img_arrow_left")
                        .resizable()
                        .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(13.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(4.0))
                }
                .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(47.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(150.0))
                Group {
                    NavigationLink(destination: MyorderView(),
                                   tag: "MyorderView",
                                   selection: $productViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(849.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
