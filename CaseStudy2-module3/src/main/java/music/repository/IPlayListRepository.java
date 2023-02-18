package music.repository;

import music.model.PlayList;

import java.util.List;

public interface IPlayListRepository {
    List<PlayList> findAllPlayList();

    void insertPlaylist(String nameSong, int singerId, int typeId);

    boolean deletePlayList(int id);

    boolean update(PlayList playList);

//    PlayList findPlaylistById(int id);
}
