package service;

import music.model.PlayList;

import java.util.List;

public interface IPlayListService {
    List<PlayList> findAllPlayList();

    void insertPlaylist(String nameSong, int singerId, int typeId);
}
