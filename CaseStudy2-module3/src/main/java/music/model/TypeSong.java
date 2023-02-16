package music.model;

public class TypeSong {
    private int typeSongId;
    private String typeSong;

    public TypeSong() {
    }

    public TypeSong(int typeSongId, String typeSong) {
        this.typeSongId = typeSongId;
        this.typeSong = typeSong;
    }

    public int getTypeSongId() {
        return typeSongId;
    }

    public void setTypeSongId(int typeSongId) {
        this.typeSongId = typeSongId;
    }

    public String getTypeSong() {
        return typeSong;
    }

    public void setTypeSong(String typeSong) {
        this.typeSong = typeSong;
    }
}
