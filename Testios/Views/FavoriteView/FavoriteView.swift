import SwiftUI

struct FavoriteView: View {
    @StateObject var favoriteViewModel = FavoriteViewModel()
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
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text(StringConstants.kLblFavorite)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(54.0),
                                   alignment: .topLeading)
                        VStack {
                            Text(StringConstants.kLblCoupon)
                                .font(FontScheme
                                    .kPlayfairDisplayExtraBold(size: getRelativeHeight(36.0)))
                                .fontWeight(.heavy)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(133.0),
                                       height: getRelativeHeight(48.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(114.0),
                               alignment: .center)
                        .background(Image("img_coupon")
                            .resizable()
                            .scaledToFit())
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 16.0) {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        Card1Cell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(30.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
                Group {
                    NavigationLink(destination: ProductView(),
                                   tag: "ProductView",
                                   selection: $favoriteViewModel.nextScreen,
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

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
