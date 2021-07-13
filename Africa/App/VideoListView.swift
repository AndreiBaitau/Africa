//
//  VideoListView.swift
//  Africa
//
//  Created by Андрей Баитов on 10.06.21.
//

import SwiftUI

struct VideoListView: View {
   @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(videos){item in
                    NavigationLink(
                        destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }//loop
                
            }//:LIST
            
            .navigationBarTitle("Videos",displayMode: .inline)
            .listStyle(InsetGroupedListStyle())
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                        
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            
            }
        }//:NAVIGATION
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
