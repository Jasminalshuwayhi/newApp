//
//  SwiftUIView.swift
//  newApp
//
//  Created by Jasmin Alshwayhi on 29/04/1447 AH.


//4. Add the Journal Illustration (Book Icon)
//✅ Find an image or illustration (SVG/PNG)
//✅ Add it to the asset catalog in Xcode
//✅ Use Image("yourImageName") to show it
//🔍 Keywords to search:
//SwiftUI add image, SwiftUI Image from assets
//5. Add Title and Subtitle Below Image
//✅ Add a title: "Begin Your Journal"
//Use .font(.title2).fontWeight(.semibold)
//✅ Add subtitle text: "Craft your personal diary, tap the plus icon to begin"
//Use .multilineTextAlignment(.center) for nice layout
//🔍 Keywords to search:
//SwiftUI text styling, SwiftUI multiline text
//6. Add a Bottom Search Bar
//✅ Use a TextField inside an HStack
//✅ Add a search icon (Image(systemName: "magnifyingglass"))
//✅ Style with padding and background color
//🔍 Keywords to search:
//SwiftUI search bar, SwiftUI TextField with icon
//7. Use Colors and Dark Mode
//✅ Set background to black or dark color
//✅ Use Color.black.edgesIgnoringSafeArea(.all)
//✅ Style texts and icons with light/purple colors
//🔍 Keywords to search:
//SwiftUI dark mode, SwiftUI background color, SwiftUI custom colors
//8. Preview in Simulator
//✅ Use the built-in canvas or run the app on the simulator
//✅ Make small layout adjustments as needed
//🔍 Keywords to search:
//SwiftUI live preview, SwiftUI simulator test

//import SwiftUI
//struct JournalView: View {
//    var body: some View {
//        
//        ZStack {
//            VStack {
//                // Top Bar
//                HStack {
//                    Text("Journal")
//                        .font(.system(size: 34, weight: .bold))
//                    
//                    
//                    Spacer()
//                    
//                    
//                    HStack(spacing: 16) {
//                        Image(systemName: "line.3.horizontal")
//                        Image(systemName: "plus")
//                    }
//                    .padding()
//                    .glassEffect()
//                    .clipShape(Capsule())
//                    .foregroundColor(.white)
//                }
//                .padding(.horizontal)
//                .padding(.top, 50)
//                
//                Spacer()
//            }
//        }
////                // Center Illustration
//                Image("book") // Ensure "book" is in Assets
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 150, height: 100)
//                    .padding(.bottom, 24)
////
////                // Journal Titles
//                Text("Begin Your Journal")
//                    .font(.system(size: 22, weight: .semibold))
//                    .foregroundColor(Color.purple)
//                
//                Text("Craft your personal diary, tap the\nplus icon to begin")
//                    .font(.system(size: 14))
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white.opacity(0.8))
//                    .padding(.top, 4)
//        Spacer().frame(height: 170)
////
//                Spacer()
////                
////                // Search Bar with glassEffect
//                HStack {
//                    Image(systemName: "magnifyingglass")
//                        .foregroundColor(.gray)
//                    
//                    Text("Search")
//                        .foregroundColor(.gray)
//                    
//                    Spacer()
//                    
//                    Image(systemName: "mic")
//                        .foregroundColor(.gray)
//                }
//                .padding()
//                .background(.clear)
//                .glassEffect()
//                .cornerRadius(20)
//                .padding(.horizontal)
//                .padding(.bottom, 30)
//           
//        }
//  }
//
//
//#Preview {
//    JournalView()
//}

//جربي تسوينه mvvm

//
//import SwiftUI
//
//struct JournalView: View {
//    // متغير للتحكم في ظهور الـ Sheet
//    @State private var showSheet = false
//    
//    // متغير لحفظ النص اللي المستخدم يكتبه في البحث
//    @State private var searchText = ""
//    
//    var body: some View {
//        ZStack {
//            VStack {
//                // Top Bar
//                HStack {
//                    Text("Journal")
//                        .font(.system(size: 34, weight: .bold))
//                    
//                    Spacer()
//                    
//                    HStack(spacing: 16) {
//                        Image(systemName: "line.3.horizontal")
//                        
//                        // زر + مع الأكشن
//                        Button(action: {
//                            showSheet.toggle() // يفتح أو يغلق الشيت
//                        }) {
//                            Image(systemName: "plus")
//                        }
//                    }
//                    .padding()
//                    .glassEffect()
//                    .clipShape(Capsule())
//                    .foregroundColor(.white)
//                }
//                .padding(.horizontal)
//                .padding(.top, 50)
//                
//                Spacer()
//            }
//        }
//        // Center Illustration
//        Image("book")
//            .resizable()
//            .scaledToFit()
//            .frame(width: 150, height: 100)
//            .padding(.bottom, 24)
//        
//        // Journal Titles
//        Text("Begin Your Journal")
//            .font(.system(size: 22, weight: .semibold))
//            .foregroundColor(Color.shahd)
//        
//        Text("Craft your personal diary, tap the\nplus icon to begin")
//            .font(.system(size: 14))
//            .multilineTextAlignment(.center)
//            .foregroundColor(.white.opacity(0.8))
//            .padding(.top, 4)
//        
//        Spacer().frame(height: 170)
//        Spacer()
//        
//        // Search Bar قابلة للكتابة
//        HStack {
//            Image(systemName: "magnifyingglass")
//                .foregroundColor(.gray)
//            
//            TextField("Search", text: $searchText)
//                .foregroundColor(.white)
//            
//            Image(systemName: "mic")
//                .foregroundColor(.gray)
//        }
//        .padding()
//        .background(.clear)
//        .glassEffect()
//        .cornerRadius(20)
//        .padding(.horizontal)
//        .padding(.bottom, 30)
//        
//        // هنا الشيت اللي يطلع لما تضغطين +
//        .sheet(isPresented: $showSheet) {
//            VStack(spacing: 16) {
//                Text("هنا بيكون محتوى الشيت")
//                    .font(.title2)
//                Text("اكتبي فيه اللي تبين بعدين")
//                    .foregroundColor(.gray)
//            }
//            .padding()
//            .presentationDetents([.medium, .large])
//        }
//        
//        
//    }
//    //}
//    
//#Preview {
//   JournalView()
//    }
//}

import SwiftUI

struct JournalView: View {
    // متغير للتحكم في ظهور الـ Sheet
    @State private var showSheet = false
    
    // متغير لحفظ النص اللي المستخدم يكتبه في البحث
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            VStack {
                // Top Bar
                HStack {
                    Text("Journal")
                        .font(.system(size: 34, weight: .bold))
                    
                    Spacer()
                    
                    HStack(spacing: 16) {
                        Image(systemName: "line.3.horizontal")
                        
                        // زر + مع الأكشن
                        Button(action: {
                            showSheet.toggle() // يفتح أو يغلق الشيت
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                    .padding()
                    .glassEffect()
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                }
                .padding(.horizontal)
                .padding(.top, 50)
                
                Spacer()
            }
        }
        // Center Illustration
        Image("book")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 100)
            .padding(.bottom, 24)
        
        // Journal Titles
        Text("Begin Your Journal")
            .font(.system(size: 22, weight: .semibold))
            .foregroundColor(Color.purple)
        
        Text("Craft your personal diary, tap the\nplus icon to begin")
            .font(.system(size: 14))
            .multilineTextAlignment(.center)
            .foregroundColor(.white.opacity(0.8))
            .padding(.top, 4)
        
        Spacer().frame(height: 170)
        Spacer()
        
        // Search Bar قابلة للكتابة
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Search", text: $searchText)
                .foregroundColor(.white)
            
            Image(systemName: "mic")
                .foregroundColor(.gray)
        }
        .padding()
        .background(.clear)
        .glassEffect()
        .cornerRadius(20)
        .padding(.horizontal)
        .padding(.bottom, 30)
        
        // هنا الشيت اللي يطلع لما تضغطين +
        .sheet(isPresented: $showSheet) {
            VStack {
                Text("هنا بيكون محتوى الشيت 🎉")
                    .font(.title2)
                Text("اكتبي فيه اللي تبين بعدين")
                    .foregroundColor(.gray)
            }
            .presentationDetents([.medium, .large]) // يخليه يفتح بنصف أو كامل الشاشة
        }
    }
}

#Preview {
    JournalView()
}
