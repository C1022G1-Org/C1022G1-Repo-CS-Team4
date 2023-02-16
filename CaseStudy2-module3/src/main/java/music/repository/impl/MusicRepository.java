package music.repository.impl;

import music.model.Playlist;
import music.repository.IMusicRepository;
import music.repository.impl.BaseRepository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MusicRepository implements IMusicRepository {

    @Override
    public List<Playlist> searchList() {
        List<Playlist> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.getConnection().prepareStatement("");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
