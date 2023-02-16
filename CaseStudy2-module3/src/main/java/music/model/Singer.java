package music.model;

public class Singer {
    private int singerId;
    private String singerName;

    public Singer() {
    }

    public Singer(int singerId, String singerName) {
        this.singerId = singerId;
        this.singerName = singerName;
    }

    public int getSingerId() {
        return singerId;
    }

    public void setSingerId(int singerId) {
        this.singerId = singerId;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }
}