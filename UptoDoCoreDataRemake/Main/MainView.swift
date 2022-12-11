//
//  MainView.swift
//  UptoDoCoreDataRemake
//
//  Created by Amaechi Chukwu on 10/12/2022.
//

import SwiftUI

struct MainView: View {
    @State var onboardingData = onboardingContents
    @State var activeOnboardingData: OnboardingComponent = onbaordingContent
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                ScrollView {
                    TabView(selection: $activeOnboardingData) {
                        ForEach(onboardingData) { item in
                            OnboardingComponent(onboardingConetent: item)
                                .tag(item)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 600)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    
                    Spacer(minLength: 100)
                    backAndNextButton
                }
            }
            .navigationBarItems(leading: skipButton)
            
        }
    }
}
// MARK: Back and Next Buttons
var backAndNextButton: some View {
    HStack(spacing: 194){
        Button  {
            
        } label: {
            Text("BACK")
                .foregroundColor(.white).opacity(0.5)
                .frame(width: 90, height: 48)
                .font(.title3)
        }
        
        
        Button {
            //if
        } label: {
            Text("NEXT")
                .foregroundColor(.white).opacity(0.5)
                .frame(width: 90, height: 48)
                .background(Color("PrimaryColor"))
                .font(.title3)
        }
    }
}


// MARK: Skip Button
var skipButton: some View {
    Button(action: {
        
    }, label: {
        Text("SKIP")
            .foregroundColor(.white).opacity(0.5)
            .font(.title3)
    })
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct OnboardingContent: Hashable, Identifiable {
    var id: UUID = UUID()
    var image: String
    var title: String
    var message: String
}

let onbaordingContent = OnboardingContent(image: "clock juggler", title: "Manage your tasks", message: "You can easily manage all og your daily tasks in DoMe for free")

let onboardingContents: [OnboardingContent] = [
    .init(image: "clock juggler", title: "Manage your tasks", message: "You can easily manage all og your daily tasks in DoMe for free"),
    OnboardingContent(image: "card holders", title: "Create daily routine", message: "In UpToDo you can create your personalized routine to stay productive")
]
