//
//  imageView.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct imageView: View {
    var body: some View {
        Home()
    }
}

struct imageView_Previews: PreviewProvider {
    static var previews: some View {
        imageView()
    }
}
struct Home : View {
    
    @State var search = "cute dogs cats"
    @ObservedObject var RandomImages = getData()
    @State var page = 1
    
    var body: some View{
        
        VStack(spacing: 0){
            if self.RandomImages.Images.isEmpty{
                Spacer()
                if self.RandomImages.noresults{
                    Text("No Results Found")
                }
                else{
                    Indicator()
                }
                Spacer()
            }
            else{
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15){
                        ForEach(self.RandomImages.Images,id: \.self){i in
                            HStack(spacing: 20){
                                ForEach(i){j in
                                    AnimatedImage(url: URL(string: j.urls["thumb"]!))
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 200)
                                    .cornerRadius(15)
                                }
                            }
                        }
 
                        if !self.RandomImages.Images.isEmpty{
                            if self.search != ""{
                                HStack{
                                    Text("Page \(self.page)")
                                    Spacer()
                                    Button(action: {
                                        self.RandomImages.Images.removeAll()
                                        self.page += 1
                                        self.SearchData()
                                    }) {
                                        Text("Next")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    }
                                }
                                .padding(.horizontal,25)
                            }
                            else{
                                HStack{
                                    Spacer()
                                    Button(action: {
                                        self.RandomImages.Images.removeAll()
                                        self.RandomImages.updateData()
                                    }) {
                                        Text("Next")
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                    }
                                }
                                .padding(.horizontal,25)
                            }
                        }
                    }
                    .padding(.top)
                }
            }
        }
        .navigationTitle("Images")
    }
    
    func SearchData(){
        let key = "XqCuhgHjzQmAgrmTxnydLqo1G74HxVhsv5SzMaSKfUc"
        // replacing spaces into %20 for query...
        let query = self.search.replacingOccurrences(of: " ", with: "%20")
        // updating page every time...
        let url = "https://api.unsplash.com/search/photos/?page=\(self.page)&query=\(query)&client_id=\(key)"
        self.RandomImages.SearchData(url: url)
    }
}

class getData : ObservableObject{
    // Going to Create Collection View.....
    // Thats Why 2d Array...
    @Published var Images : [[Photo]] = []
    @Published var noresults = false
    
    init() {
        SearchData(url: "https://api.unsplash.com/search/photos/?page=1&query=doggo&client_id=XqCuhgHjzQmAgrmTxnydLqo1G74HxVhsv5SzMaSKfUc")
    }
    
    func updateData(){
        
        self.noresults = false
        
        let key = "XqCuhgHjzQmAgrmTxnydLqo1G74HxVhsv5SzMaSKfUc"
        let url = "https://api.unsplash.com/photos/random/?count=30&client_id=\(key)"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
                return
            }
            
            // JSON decoding...
            
            do{
                
                let json = try JSONDecoder().decode([Photo].self, from: data!)
                
                
                // going to create collection view each row has two views...
                
                for i in stride(from: 0, to: json.count, by: 2){
                    
                    var ArrayData : [Photo] = []
                    
                    for j in i..<i+2{
                        
                        // Index out bound ....
                        
                        if j < json.count{
                            
                        
                            ArrayData.append(json[j])
                        }
                    }
                    
                    DispatchQueue.main.async {
                        
                        self.Images.append(ArrayData)
                    }
                }
            }
            catch{
                
                print(error.localizedDescription)
            }
            
            
        }
        .resume()
    }
    
    func SearchData(url: String){
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
                return
            }
            
            // JSON decoding...
            
            do{
                
                let json = try JSONDecoder().decode(SearchPhoto.self, from: data!)
                
                
                if json.results.isEmpty{
                    
                    self.noresults = true
                }
                else{
                    
                    self.noresults = false
                }
                
                // going to create collection view each row has two views...
                
                for i in stride(from: 0, to: json.results.count, by: 2){
                    
                    var ArrayData : [Photo] = []
                    
                    for j in i..<i+2{
                        
                        // Index out bound ....
                        
                        if j < json.results.count{
                            
                        
                            ArrayData.append(json.results[j])
                        }
                    }
                    
                    DispatchQueue.main.async {
                        
                        self.Images.append(ArrayData)
                    }
                }
            }
            catch{
                
                print(error.localizedDescription)
            }
            
            
        }
        .resume()
    }
}

struct Photo : Identifiable,Decodable,Hashable{
    
    var id : String
    var urls : [String : String]
}

struct Indicator : UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
        
    }
}

// differnt model for search....

struct SearchPhoto : Decodable{
    var results : [Photo]
}
