package music.service;

import music.model.PlayList;
import music.model.Singer;
import music.model.TypeSong;

import java.util.List;

public interface IPlayListService {
    List<PlayList> findAllPlayList(String search);

    void insertPlaylist(String nameSong, int singerId, int typeId);

    boolean deletePlayList(int id);

    boolean update(PlayList playList);

    PlayList findPlaylistById(int id);
    List<Singer> showSingerList();
    List<TypeSong> showTypeSongList();
}
