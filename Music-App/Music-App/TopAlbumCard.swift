//
//  TopAlbumCard.swift
//  Music-App
//
//  Created by Atanas Kolev on 6.06.21.
//  Copyright © 2021 Atanas Kolev. All rights reserved.
//

import SwiftUI

struct TopAlbumCard: View {
    var album: Album
    
    var body: some View {
        HStack {
            Image(album.albumArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:40, height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(album.name)
                    .font(.headline)
                Text(album.artist)
                    .font(.subheadline)
                    .foregroundColor(.accentColor)
            }
            Spacer()
            MoreButtonView(album: album)
        }.padding()
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.4), lineWidth: 1)
        )
        .shadow(radius: 1)
    }
}

struct MoreButtonView: View {
    var album: Album
    
    var body: some View {
        NavigationLink(destination: AlbumDetailView(album: album)){
            VStack {
                    Circle().frame(width: 5, height: 5)
                    Circle().frame(width: 5, height: 5)
                    Circle().frame(width: 5, height: 5)
                }
                .foregroundColor(.accentColor)
        }
    }
}

struct TopAlbumCard_Previews: PreviewProvider {
    static var previews: some View {
        TopAlbumCard(album: albumlist[1])
            .previewLayout(.fixed(width: 380, height: 75))
    }
}
