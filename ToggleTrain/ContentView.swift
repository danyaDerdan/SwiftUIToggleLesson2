import SwiftUI

struct ContentView: View {
    @State var isOnToggle: Bool = false
    @State var isOnDarkTheme: Bool = false
    var body: some View {
        VStack {
            
                
                ZStack {
                    HStack{
                        VStack {
                            Toggle(isOn: $isOnDarkTheme, label: {Text("Dark theme").bold()})
                                .padding(110)
                                .offset(x:-95)
                            Spacer().frame(height: 100)
                        }
                    }
                    Rectangle().fill(!isOnDarkTheme ? .green : .blue).offset(x: isOnToggle ? 200 : 0)
                    Text("Content").font(.largeTitle).foregroundColor(.white).bold().offset(x: isOnToggle ? 200 : 0)
                }
            
            Toggle(isOn: $isOnToggle, label: {Text("Show settings").bold()}).safeAreaPadding(30)
        }.animation(.spring(duration: 0.5, bounce: 0.3, blendDuration: 0.9), value: isOnToggle)
            
    }
}

#Preview {
    ContentView()
}
