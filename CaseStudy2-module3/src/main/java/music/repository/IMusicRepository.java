package music.repository;

import music.model.Playlist;

import java.util.List;

public interface IMusicRepository {
    List<Playlist> searchList();
}
