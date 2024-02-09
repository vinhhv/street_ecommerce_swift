import SwiftUI

struct MenuView: View {
    @StateObject var menuViewModel = MenuViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_rectangle")
                        .resizable()
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                        .padding(.leading, getRelativeWidth(24.0))
                    VStack {
                        Text(StringConstants.kLblMildredBennett)
                            .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kLblUserGmailCom)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.trailing, getRelativeWidth(37.0))
                    }
                    .padding(.leading, getRelativeWidth(22.0))
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        Text(StringConstants.kLblDiscover)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(73.0))
                            .onTapGesture {
                                menuViewModel.nextScreen = "DiscoverView"
                            }
                        Text(StringConstants.kLblShop)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .onTapGesture {
                                menuViewModel.nextScreen = "ShopView"
                            }
                        Text(StringConstants.kLblFavorites)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(14.0))
                            .onTapGesture {
                                menuViewModel.nextScreen = "FavoriteView"
                            }
                        Text(StringConstants.kLblInbox)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(15.0))
                        Text(StringConstants.kLblAskAnExpert)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                        Divider()
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(53.0))
                        Text(StringConstants.kLblSettings)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(62.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(234.0))
                    }
                    Group {
                        ZStack(alignment: .leading) {
                            Button(action: {}, label: {})
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeWidth(43.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(27.48))
                            Image("img_shape")
                                .resizable()
                                .frame(width: getRelativeWidth(55.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.trailing, getRelativeWidth(15.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(43.0),
                               alignment: .leading)
                        Text(StringConstants.kLblLogOut)
                            .font(FontScheme
                                .kPlayfairDisplayItalicRegular(size: getRelativeHeight(22.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(14.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(799.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: ShopView(),
                                   tag: "ShopView",
                                   selection: $menuViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DiscoverView(),
                                   tag: "DiscoverView",
                                   selection: $menuViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FavoriteView(),
                                   tag: "FavoriteView",
                                   selection: $menuViewModel.nextScreen,
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

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
