// Swift toolchain version 5.0
// Running macOS version 14.5
// Created on 5/23/24.
//
// Author: Kieran Brown
//

import SwiftUI

struct Feed: View {
    @State private var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.models) { model in
                Card(model: model)
            }
            .navigationTitle("Rogram")
        }
        .onAppear() {
            loadModels()
        }
    }
    
    private func loadModels() {
        Task {
            do {
                self.viewModel.models = try await viewModel.fetch()
            } catch {
                print("Error fetching models: \(error)")
            }
        }
    }
}

#Preview {
    Feed()
}
