import SwiftUI

struct ShopView: View {
    @StateObject var shopViewModel = ShopViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblShop)
                        .font(FontScheme
                            .kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(54.0),
                               alignment: .topLeading)
                    Text(StringConstants.kMsgHollywoodHairstyles)
                        .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(183.0), height: getRelativeHeight(19.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(5.0))
                    HStack {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSort)
                                    .font(FontScheme
                                        .kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                                    .fontWeight(.medium)
                                    .padding(.trailing, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(169.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                            bottomLeft: 18.0, bottomRight: 18.0)
                                            .stroke(Color.clear.opacity(0.7),
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                               bottomLeft: 18.0, bottomRight: 18.0)
                                            .fill(Color.clear.opacity(0.7)))
                            }
                        })
                        .frame(width: getRelativeWidth(169.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                bottomRight: 18.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0)
                                .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblFilter)
                                    .font(FontScheme
                                        .kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                                    .fontWeight(.medium)
                                    .padding(.trailing, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(177.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                               bottomLeft: 19.0, bottomRight: 19.0))
                            }
                        })
                        .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                                   bottomRight: 19.0))
                    }
                    .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(39.0))
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                      spacing: 16.0) {
                                ForEach(0 ... 3, id: \.self) { index in
                                    CardCell()
                                }
                            }
                        }
                    }
                    .padding(.top, getRelativeHeight(27.0))
                    .fixedSize(horizontal: false, vertical: false)
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSurgeShort)
                                .font(FontScheme
                                    .kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(86.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                            Text(StringConstants.kLbl68Usd)
                                .font(FontScheme
                                    .kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(62.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(52.0),
                               alignment: .center)
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgSweatJoggerFrench)
                                .font(FontScheme
                                    .kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(148.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                            Text(StringConstants.kLbl68Usd)
                                .font(FontScheme
                                    .kPlayfairDisplayMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(62.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(52.0),
                               alignment: .center)
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(52.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.trailing, getRelativeWidth(29.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            }
            .padding(.top, getRelativeHeight(23.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(849.0))
        .hideNavigationBar()
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
