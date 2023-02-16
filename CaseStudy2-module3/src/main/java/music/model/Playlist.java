package music.model;

public class Playlist {
private int songId;
private String songName;
private String singerName;
private String typeSong;

    public Playlist() {
    }

    public Playlist(int songId, String songName, String singerName, String typeSong) {
        this.songId = songId;
        this.songName = songName;
        this.singerName = singerName;
        this.typeSong = typeSong;
    }

    public int getSongId() {
        return songId;
    }

    public void setSongId(int songId) {
        this.songId = songId;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getTypeSong() {
        return typeSong;
    }

    public void setTypeSong(String typeSong) {
        this.typeSong = typeSong;
    }
}
