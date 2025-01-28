//
//  ToggleView.swift
//  EnvObjectTests
//
//  Created by Greg Burks on 1/27/25.
//
import SwiftUI

struct ToggleView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Grand Child View")
                .font(.largeTitle)
            
            HStack(alignment: .center) {
                Text("boolVal")
                Text("\($viewModel.boolVal.wrappedValue)")
                    .font(.title)
                    .foregroundStyle((self.viewModel.boolVal ? Color.green : Color.red))
            }
            .padding([.bottom], 70)
            
            HStack {
                Toggle("Toggle", isOn: $viewModel.boolVal)
                    .padding(24)
                    .frame(width: 200, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(40)
            }
        }
    }
}

#Preview {
    ToggleView()
        .environmentObject(ViewModel())
}
