import SwiftUI

struct PaymentView: View {
    @StateObject var paymentViewModel = PaymentViewModel()
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
                Text(StringConstants.kLblPayment)
                    .font(FontScheme.kPlayfairDisplayItalicRegular(size: getRelativeHeight(40.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(54.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(22.0))
                Text(StringConstants.kLblMyCards)
                    .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.leading, getRelativeWidth(24.0))
                FSPagerViewSUI($paymentViewModel.cardsliderCurrentPage,
                               paymentViewModel.sliderData) { item in
                    ZStack(alignment: .center) {
                        Text(StringConstants.kLbl0112)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(32.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(37.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(157.03))
                            .padding(.trailing, getRelativeWidth(261.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_television")
                                .resizable()
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(16.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            ZStack(alignment: .leading) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeWidth(32.0), alignment: .trailing)
                                    .clipShape(Circle())
                                    .padding(.leading, getRelativeWidth(19.0))
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeWidth(32.0), alignment: .leading)
                                    .clipShape(Circle())
                                    .padding(.trailing, getRelativeWidth(19.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(32.0),
                                   alignment: .trailing)
                            .padding(.top, getRelativeHeight(98.0))
                        }
                        .frame(width: getRelativeWidth(279.0), height: getRelativeHeight(146.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(27.09))
                        .padding(.horizontal, getRelativeWidth(27.21))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(195.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                               bottomRight: 30.0))
                }
                Button(action: {}, label: {
                    Image("img_plus_black_900_01")
                })
                .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(74.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                        bottomRight: 25.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                           bottomRight: 25.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(22.0))
                ZStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblPaymentOption)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(22.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(157.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField("", text: $paymentViewModel.applepayText)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(366.0), height: getRelativeHeight(73.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                bottomRight: 25.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(15.0))
                    }
                    .frame(width: getRelativeWidth(366.0), height: getRelativeHeight(118.0),
                           alignment: .center)
                    .padding(.bottom, getRelativeHeight(96.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    HStack {
                        Text(StringConstants.kLblTotal)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(36.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(48.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(55.0))
                        Spacer()
                        Text(StringConstants.kLbl116)
                            .font(FontScheme.kPlayfairDisplayMedium(size: getRelativeHeight(36.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(48.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(55.0))
                            .padding(.trailing, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(413.0), height: getRelativeHeight(128.0),
                           alignment: .center)
                    .background()
                    .padding(.top, getRelativeHeight(86.39))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(413.0), height: getRelativeHeight(214.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(23.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(713.0),
                   alignment: .center)
            VStack {
                Text(StringConstants.kLblPayment)
                    .font(FontScheme.kPlayfairDisplayBold(size: getRelativeHeight(22.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                Image("img_arrow_left")
                    .resizable()
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(13.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
            }
            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(44.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(161.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(849.0))
        .hideNavigationBar()
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
