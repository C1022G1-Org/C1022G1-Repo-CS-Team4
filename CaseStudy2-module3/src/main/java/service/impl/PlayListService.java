package service.impl;

import music.model.PlayList;
import music.repository.IPlayListRepository;
import music.repository.impl.PlayListRepository;
import service.IPlayListService;

import java.util.List;

public class PlayListService implements IPlayListService {
    IPlayListRepository iPlayListRepository = new PlayListRepository();
    @Override
    public List<PlayList> findAllPlayList() {
        return iPlayListRepository.findAllPlayList();
    }

    @Override
    public void insertPlaylist(String nameSong, int singerId, int typeId) {
        iPlayListRepository.insertPlaylist(nameSong, singerId, typeId);
    }
}
