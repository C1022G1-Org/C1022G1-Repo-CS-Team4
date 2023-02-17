package music.repository;

import music.model.PlayList;

import java.util.List;

public interface IPlayListRepository {
    List<PlayList> findAllPlayList();
}
