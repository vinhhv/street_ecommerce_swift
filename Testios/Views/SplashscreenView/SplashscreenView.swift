import SwiftUI

struct SplashscreenView: View {
    @StateObject var splashscreenViewModel = SplashscreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Image("img_graphic_elements")
                    .resizable()
                    .frame(width: getRelativeWidth(269.0), height: getRelativeHeight(126.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                Text(StringConstants.kLblStreetStyle)
                    .font(FontScheme.kPlayfairDisplaySemiBoldItalic(size: getRelativeHeight(36.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(48.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(33.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $splashscreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            splashscreenViewModel.nextScreen = "HomeView"
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
