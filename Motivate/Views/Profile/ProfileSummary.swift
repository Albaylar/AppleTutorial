//
//  ProfileSummary.swift
//  Motivate
//
//  Created by Furkan Deniz Albaylar on 30.04.2023.
//

import SwiftUI

struct ProfileSummary: View {
    var profile : Profile
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 20){
                Text(profile.username)
                    .font(.title)
                    .bold()
                Text("Notifications :  \(profile.prefersNotifications ? "On": "Off")")
                Text("Seasonal Photos : \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                
                Divider()

                VStack(alignment: .center) {
                    Text("Completed Badges")
                        .font(.headline)

                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()

                VStack(alignment: .center) {
                    Text("Recent Hikes")
                        .font(.headline)

                    HikeView(hike: modelData.hikes[0])
                }
                
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
                    .environmentObject(ModelData())
    }
}
