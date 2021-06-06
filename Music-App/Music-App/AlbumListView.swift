//
//  ContentView.swift
//  Music-App
//
//  Created by Atanas Kolev on 4.06.21.
//  Copyright © 2021 Atanas Kolev. All rights reserved.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(albumlist, id: \.id) { album in
                                AlbumCard(album: album)
                            }
                        }.frame(height: 400)
                    }
                    Text("Top Albums")
                        .font(.largeTitle)
                        .bold()
                    VStack {
                        ForEach(albumlist, id: \.id) { album in
                            TopAlbumCard(album: album)
                        }
                    }
                }.padding()
            }.navigationBarTitle("My Albums")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
