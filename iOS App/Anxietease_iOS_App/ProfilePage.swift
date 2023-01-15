//
//  ProfilePage.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI
import GoogleSignIn

struct ProfilePage: View {
    
    @EnvironmentObject var googleDelegate: GoogleDelegate
    
    var body: some View {
        if googleDelegate.signedIn{
        NavigationView{
            ScrollView{
                VStack{
                // Profile Card
                    ZStack{
                        Color("LightTeal")
                        VStack{
                            Image("Profile")
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                                .shadow(radius: 7)
                                .padding()
                            Text(GIDSignIn.sharedInstance().currentUser!.profile.name)
                                .font(.custom("Lato", size: 20))
                                .padding(.top)
                            Text(GIDSignIn.sharedInstance().currentUser!.profile.email)
                                .font(.custom("Lato", size: 20))
                                .padding(.top)
                                .padding(.bottom)
                            Button(action: {GIDSignIn.sharedInstance().signOut()
                                    googleDelegate.signedIn = false}) {
                                Text("Sign Out")
                                    .frame(width: 200 , height: 50, alignment: .center)
                                    .font(.custom("Lato", size: 20))
                            }
                             .background(Color("Teal"))
                             .foregroundColor(Color.white)
                             .cornerRadius(20)
                        }
                    }.frame(width: 300, height: 400, alignment: .center)
                    .cornerRadius(24)
                    Divider()
                        .padding(.top)
                
                    // Title
                    Text("Overall Statistics").font(.custom("Lato", size: 30))
                    
                    //Stats Card 1
                    ZStack{
                        Color("LightTeal")
                        HStack{
                            Image("Stats")
                                .resizable()
                                .frame(width: 50 , height: 40, alignment: .center)
                                .padding()
                            VStack{
                                Text("Overall").font(.custom("Lato", size: 20))
                                    .padding(.top)
                                Text("Incliding Predicted").font(.custom("Lato", size: 10))
                                    .padding(.bottom)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text("170").padding()
                        }
                    }.frame(width: 300, height: 100, alignment: .center)
                    .cornerRadius(20)
                    .padding()
                    
                    //Stats Card 2
                    ZStack{
                        Color("LightTeal")
                        HStack{
                            Image("Stats")
                                .resizable()
                                .frame(width: 50 , height: 40, alignment: .center)
                                .padding()
                            VStack{
                                Text("Handled").font(.custom("Lato", size: 20))
                                    .padding(.top)
                                Text("Using activities").font(.custom("Lato", size: 10))
                                    .padding(.bottom)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text("160").padding()
                        }
                    }.frame(width: 300, height: 100, alignment: .center)
                    .cornerRadius(20)
                    
                    Divider()
                        .padding()
                    
                    //Motivation
                    ZStack{
                        Color.white
                        VStack{
                            Text("Motivation")
                                .font(.custom("Lato", size: 30))
                                .padding(.top)
                                .foregroundColor(.black)
                            Spacer()
                            Image("Cat")
                                .frame(width: 200, height: 100, alignment: .center)
                                .padding()
                            Spacer()
                            Text("You are an allstar\n Get on your game go play")
                                .font(.custom("Lato", size: 15))
                                .padding(.bottom)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                        }
                    }.frame(width: 300, height: 320, alignment: .center)
                    .cornerRadius(20)
                    .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                }.padding()
                .navigationTitle("Profile")
                Text("")
                    .frame(maxWidth: .infinity)
            }
        }
    }
        else{
            SignInPage()
        }
}
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
