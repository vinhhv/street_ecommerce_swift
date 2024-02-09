import SwiftUI

struct DiscoverView: View {
    @StateObject var discoverViewModel = DiscoverViewModel()
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
                    .padding(.leading, getRelativeWidth(29.0))
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
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblDiscover)
                    .font(FontScheme.kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(54.0),
                           alignment: .topLeading)
                Text(StringConstants.kMsgDiscoverYourProducts)
                    .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(19.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(8.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_plus")
                        .resizable()
                        .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(22.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(98.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                        bottomRight: 30.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                           bottomRight: 30.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(38.0))
                .padding(.horizontal, getRelativeWidth(6.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 1, id: \.self) { index in
                                SectionCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(333.0), alignment: .leading)
                .padding(.top, getRelativeHeight(41.0))
                .padding(.horizontal, getRelativeWidth(7.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(799.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(849.0))
        .hideNavigationBar()
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
