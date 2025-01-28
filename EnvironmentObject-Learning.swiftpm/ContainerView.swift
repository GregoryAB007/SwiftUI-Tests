import UIKit
import SwiftUI
import Foundation


class ViewModel: ObservableObject {
    @Published var boolVal: Bool = false
    
    public func change2() {
        boolVal.toggle()
    }
}


struct ContainerView: View {
    @StateObject var model: ViewModel = ViewModel()
    
    var body: some View {
        HStack {
            VStack {
                Spacer()
                
                Text("Container View")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                HStack(alignment: .center) {
                    Text("boolVal")
                    Text("\(model.boolVal)")
                        .font(.title)
                        .foregroundStyle((self.model.boolVal ? Color.green : Color.red))
                }
                .padding([.bottom], 70)
                
                InsideView()
                
                Spacer()
            }
        }
        .environmentObject(model)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2))
    }
        
}

#Preview("ContentView") {
    ContainerView()
}
