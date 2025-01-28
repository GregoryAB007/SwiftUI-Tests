//
//  InsideView.swift
//  EnvObjectTests
//
//  Created by Greg Burks on 1/27/25.
//

import SwiftUI

struct InsideView: View {
    @EnvironmentObject var model: ViewModel
    
    var changeButton: some View {
        VStack {
            Button(action: {
                self.model.change2()
            }) {
                Text("Press to change to \(!$model.boolVal.wrappedValue)")
                    .font(.headline)
                    .padding(12)
                    .foregroundStyle(.blue)
                    .background()
                    .cornerRadius(40)
            }
        }
    }
    
    var body: some View {
        VStack {
            
            Text("Child View")
                .font(.largeTitle)
                .padding(20)
            
            HStack(alignment: .center) {
                Text("boolVal")
                Text("\($model.boolVal.wrappedValue)")
                    .font(.title)
                    .foregroundStyle((self.model.boolVal ? Color.green : Color.red))
            }
            .padding([.bottom], 10)
            
            
            
            changeButton
                .padding([.bottom],60)
            
            
            ToggleView()
                .padding(24)
                .background(Color(.sRGB, red: 0.7, green: 0.8, blue: 0.2))
                .frame(width: 400)
        }
        .padding(40)
        .background(Color(.sRGB, red: 0.8, green: 0.9, blue: 0.2))
    }
}
