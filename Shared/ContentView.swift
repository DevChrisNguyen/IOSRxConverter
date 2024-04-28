//
//  ContentView.swift
//  FirstiOSApp
//
//  Created by Christian Nguyen on 2/12/24.
//

import SwiftUI



struct ContentView: View {
    @State private var rSphereEntry: String = ""
    @State private var rCylEntry: 
        String = ""
    @State private var rAxisEntry:
        String = ""
    
    @State private var lSphereEntry: String = ""
    @State private var lCylEntry:
        String = ""
    @State private var lAxisEntry:
        String = ""
    
    @State private var rSphereResult: String = ""
    @State private var rCylResult:
        String = ""
    @State private var rAxisResult:
        String = ""
    
    @State private var lSphereResult: String = ""
    @State private var lCylResult:
        String = ""
    @State private var lAxisResult:
        String = ""
    
    var body: some View {
        VStack {
            Text("Enter Rx:").font(.system(size:20,weight: .bold, design: .serif))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Grid{
                GridRow{
                    Text("OD:").padding()
                    TextField("SPH", value: $rSphereEntry, formatter: NumberFormatter())
                    TextField("CYL", value: $rCylEntry, formatter: NumberFormatter())
                    TextField("AXIS",
                              value: $rAxisEntry, formatter: NumberFormatter())
                
                }
                GridRow{
                    Text("OS:")
                    TextField("SPH", value: $lSphereEntry, formatter: NumberFormatter())
                    TextField("CYL", value: $lCylEntry, formatter: NumberFormatter())
                    TextField("AXIS",
                              value: $lAxisEntry, formatter: NumberFormatter())
                }
            }
            Button("Convert Rx"){
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .padding()
            Text("Converted Rx:").font(.system(size:20,weight: .bold, design: .serif))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Grid{
                GridRow{
                    Text("OD:").padding()
                    TextField("SPH", value: $rSphereResult, formatter: NumberFormatter()).disabled(true)
                    TextField("CYL", value: $rCylResult, formatter: NumberFormatter()).disabled(true)
                    TextField("AXIS",
                              value: $rAxisResult, formatter: NumberFormatter()).disabled(true)
                
                }
                GridRow{
                    Text("OS:")
                    TextField("SPH", value: $lSphereResult, formatter: NumberFormatter()).disabled(true)
                    TextField("CYL", value: $lCylResult, formatter: NumberFormatter()).disabled(true)
                    TextField("AXIS",
                              value: $lAxisResult, formatter: NumberFormatter()).disabled(true)
                }
            }
            Button("Clear"){
                   
                   }
                   .buttonStyle(.borderedProminent)
                   .tint(.blue)
                   .padding()
            Spacer()
            
            
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
