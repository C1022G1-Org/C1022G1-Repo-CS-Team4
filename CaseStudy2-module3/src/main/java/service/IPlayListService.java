package service;

import music.model.PlayList;

import java.util.List;

public interface IPlayListService {
    List<PlayList> findAllPlayList();
}
