// Swift toolchain version 5.0
// Running macOS version 14.5
// Created on 5/23/24.
//
// Author: Kieran Brown
//

import SwiftUI

struct FullScreenDetail: View {
    var model: Model
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            AsyncImage(url: model.thumbnailUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Color.gray
                    .aspectRatio(contentMode: .fit)
            }
            
            Text(model.title)
                .font(.title)
        }
        .toolbar {
            ToolbarItem {
                Button(action: dismiss.callAsFunction) {
                    Label("Back to feed", systemImage: "xmark")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FullScreenDetail(model: Model(
            albumId: 1,
            id: 1,
            title: "accusamus beatae ad facilis cum similique qui sunt",
            url: URL(string: "https://via.placeholder.com/600/92c952")!,
            thumbnailUrl: URL(string: "https://via.placeholder.com/150/92c952")!)
        )
    }
}
