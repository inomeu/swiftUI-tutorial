//
//  LandmarkList.swift
//  Landmarks
//
//  Created by inoue mei on 2022/12/22.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter {
        landmark in (!showFavoritesOnly || landmark.isFavorite)
    }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorite only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    //下の二つで配列内の画像がリストで表示される
                    //        List {
                    //            LandmarkRow(landmark: landmarks[0])
                    //            LandmarkRow(landmark: landmarks[1])
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
        //            LandmarkList()
        //                .previewDevice(PreviewDevice(rawValue: "iPhone SE（2nd generation）"))
        //                .previewDisplayName(deviceName)
        //        }
        LandmarkList()
    }
}
