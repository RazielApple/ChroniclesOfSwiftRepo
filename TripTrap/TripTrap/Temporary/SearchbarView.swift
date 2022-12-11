//
//  SearchbarView.swift
//  TripTrap
//
//  Created by シェイミ on 11/12/2022.
//

import SwiftUI

struct SearchbarView: View {
    @Binding var text: String
    @Environment(\.colorScheme) var colorScheme: ColorScheme
        
    @State private var isEditing = false
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack {
            
            TextField("", text: $text)
                .placeholder(when: text.isEmpty) {
                    Text("Search for location...")
                        .foregroundColor(colorScheme == .light ? .gray : .gray)
                }
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.secondarySystemFill))
                .cornerRadius(10)
                .focused($isFocused)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                                isFocused = false
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal)
                .onTapGesture {
                    self.isEditing = true
                }
        }
    }
}

// MARK: This extension will change the colour of the placeholder in the searchbar.
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchbarView(text: .constant(""))
    }
}
