// Swift toolchain version 5.0
// Running macOS version 14.5
// Created on 5/23/24.
//
// Author: Kieran Brown
//

import SwiftUI

struct Card: View {
    var model: Model
    
    var body: some View {
        VStack(spacing: 0) {
            AsyncImage(url: model.thumbnailUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Color.gray
                    .aspectRatio(contentMode: .fit)

            }
            
            Rectangle()
                .frame(height: 2)
            
            HStack() {
                Text(model.title)
                    .font(.title)
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
            }
            .padding()
        }
        .border(Color.black)
        .padding()
    }
}

#Preview {
    Card(model: Model(
        albumId: 1,
        id: 1,
        title: "accusamus beatae ad facilis cum similique qui sunt",
        url: URL(string: "https://via.placeholder.com/600/92c952")!,
        thumbnailUrl: URL(string: "https://via.placeholder.com/150/92c952")!)
    )
}
