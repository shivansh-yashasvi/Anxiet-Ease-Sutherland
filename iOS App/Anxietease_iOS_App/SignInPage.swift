//
//  SignInPage.swift
//  Anxietease
//
//  Created by Sidarth V on 17/07/21.
//

import SwiftUI
import GoogleSignIn

struct SignInPage: View {
    
    @EnvironmentObject var googleDelegate: GoogleDelegate
    
    var body: some View {
        if(googleDelegate.signedIn){
            MainView()
        }
        else{
            ZStack{
            Color("PureWhite").ignoresSafeArea()
            VStack(alignment: .center, spacing: nil, content: {
                Spacer()
                Image("Name")
                    .resizable()
                    .scaledToFit()
                    .padding()
                Spacer()
                Image("FirstPage")
                    .frame(maxWidth: .infinity)
                    .padding()
                Spacer()
                Text("Struggling to deal with anxiety? \nTry out our curated kalming content")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .font(
                        .custom("Lato-Black", size: 20.0)
                    )
                Spacer()
                Button(action: {
                    GIDSignIn.sharedInstance().signIn()
                }) {
                    Text("Sign In")
                }
                .foregroundColor(.white)
                .padding()
                .font(.custom("Lato-Black", size: 16))
                .frame(maxWidth: .infinity)
                .background(Color("NavyBlue"))
                .cornerRadius(12)
                .padding()

            })
        }
        }
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
