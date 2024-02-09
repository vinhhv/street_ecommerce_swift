import SwiftUI

struct MyorderView: View {
    @StateObject var myorderViewModel = MyorderViewModel()
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
                    Text(StringConstants.kLblMyOrder)
                        .font(FontScheme
                            .kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(54.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(22.0))
                    ZStack(alignment: .center) {
                        HStack {
                            Text(StringConstants.kLbl58)
                                .font(FontScheme
                                    .kPlayfairDisplayMedium(size: getRelativeHeight(28.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(42.0),
                                       height: getRelativeHeight(38.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(9.0))
                            Spacer()
                            Text(StringConstants.kLbl1x)
                                .font(FontScheme
                                    .kPlayfairDisplayMedium(size: getRelativeHeight(36.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeHeight(48.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(89.0))
                        }
                        .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(48.0),
                               alignment: .bottomTrailing)
                        .padding(.top, getRelativeHeight(586.52))
                        .padding(.leading, getRelativeWidth(205.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 6, id: \.self) { index in
                                        XCell()
                                    }
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .center)
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(703.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(799.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: PaymentView(),
                                   tag: "PaymentView",
                                   selection: $myorderViewModel.nextScreen,
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

struct MyorderView_Previews: PreviewProvider {
    static var previews: some View {
        MyorderView()
    }
}
