//
//  ContentView.swift
//  Anxietease
//
//  Created by Sidarth V on 17/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var splashscreen = true
    
    var body: some View {
        if(splashscreen){
            ZStack{
                Color("White").ignoresSafeArea()
                VStack{
                    Image("Name")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+3){
                    withAnimation {
                        self.splashscreen = false
                    }
                }
            }
        }
        else{
            SignInPage()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
