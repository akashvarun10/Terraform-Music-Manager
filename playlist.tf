resource "spotify_playlist" "Terraform_Test_Playlist" {
    name = "Terraform-Test-Playlist"
    tracks = ["7djCla4Gp1Kt3W5TPPeONJ"]
  
}

data "spotify_search_track" "eminem" {
    artist = "Eminem"
  
}

resource "spotify_playlist" "slimShady" {
    name = "Slim-Shady"
    tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id]
  
}