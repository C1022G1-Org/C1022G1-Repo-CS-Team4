package music.repository.impl;

import music.model.PlayList;
import music.model.Singer;
import music.model.TypeSong;
import music.repository.BaseRepository;
import music.repository.IPlayListRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PlayListRepository implements IPlayListRepository {

    public static final String FINDALL = "select pll.playlist_id,pll.name_song, ts.name_type, s.name_singer from playlist pll join type_song ts on pll.type_id = ts.type_id join singer s on pll.singer_id = s.singer_id where pll.name_song like concat('%',?,'%')";
    public static final String INSERT_PLAYLIST = "insert into playlist(name_song, singer_id, type_id) values (?, ?, ?);";
    public static final String DELETE_PLAYLIST = "delete from playlist where playlist_id=?;";
    private static final String UPDATE_USERS_SQL = "update playlist set name_song=? , singer_id=?, type_id=? where playlist_id=? ;";
    public static final String SET_UPDATE = "SET SQL_SAFE_UPDATES = 0;";
    private static final String FIND_BY_ID = "select pll.playlist_id,pll.name_song, ts.name_type, s.name_singer from playlist pll join type_song ts on pll.type_id = ts.type_id join singer s on pll.singer_id = s.singer_id where playlist_id=?";


    @Override
    public List<PlayList> findAllPlayList(String search) {
        List<PlayList> playLists = new ArrayList<>();
        if (search == null) {
            search = "";
        }
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FINDALL);
            preparedStatement.setString(1, search);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int playListId = resultSet.getInt("playlist_id");
                String nameSong = resultSet.getString("name_song");
                String singerName = resultSet.getString("name_singer");
                String typeName = resultSet.getString("name_type");
                Singer singer = new Singer(singerName);
                TypeSong typeSong = new TypeSong(typeName);
                PlayList playList = new PlayList(playListId, nameSong, singer, typeSong);
                playLists.add(playList);
            }
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return playLists;
    }

    @Override
    public void insertPlaylist(String nameSong, int singerId, int typeId) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PLAYLIST);
            preparedStatement.setString(1, nameSong);
            preparedStatement.setInt(2, singerId);
            preparedStatement.setInt(3, typeId);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean deletePlayList(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PLAYLIST);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(PlayList playList){
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SET_UPDATE);
             PreparedStatement preparedStatement1 = connection.prepareStatement(UPDATE_USERS_SQL);
        ) {

            preparedStatement1.setString(1, playList.getNameSong());
            preparedStatement1.setInt(2, playList.getSinger().getSingerId());
            preparedStatement1.setInt(3, playList.getTypeSong().getTypeId());
            preparedStatement1.setInt(4, playList.getPlayListId());
            return preparedStatement1.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

//    @Override
//    public PlayList findPlaylistById(int id) {
//        Connection connection = BaseRepository.getConnection();
//        PlayList playList = null;
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
//            preparedStatement.setInt(1, id);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                String nameSong = resultSet.getString("name_song");
//                String singerName = resultSet.getString("name_singer");
//                String typeName = resultSet.getString("name_type");
//                Singer singer = new Singer(singerName);
//                TypeSong typeSong = new TypeSong(typeName);
//                playList = new PlayList(id,nameSong,singer,typeSong);
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return playList;
//    }
}
