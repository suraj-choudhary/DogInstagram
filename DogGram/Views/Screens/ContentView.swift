//
//  ContentView.swift
//  DogGram
//
//  Created by suraj kumar on 06/02/23.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(title: "feed", posts: PostArrayObject())
                
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Feed")
            }
            
            NavigationView {
                BrowseView()

            }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            NavigationView {
                UploadView()

            }
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Browse")
                }
            
            Text("Screen 4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }
        }
        .accentColor(Color.MyTheme.ColorPurple)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
