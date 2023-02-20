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
    private static final String UPDATE_USERS_SQL = "update playlist set name_song=? , singer_id=?, type_id=? where playlist_id=?";
    public static final String SET_UPDATE = "SET SQL_SAFE_UPDATES = 0;";
    private static final String FIND_BY_ID = "select pll.playlist_id,pll.name_song, s.name_singer, ts.name_type from playlist pll join type_song ts on pll.type_id = ts.type_id join singer s on pll.singer_id = s.singer_id where playlist_id=?";


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

    @Override
    public PlayList findPlaylistById(int id) {
        Connection connection = BaseRepository.getConnection();
        PlayList playList;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                playList = new PlayList();
                playList.setPlayListId(resultSet.getInt("pll.playlist_id")) ;
                playList.setNameSong( resultSet.getString("pll.name_song"));
                String singerName = resultSet.getString("s.name_singer");
                String typeName = resultSet.getString("ts.name_type");
                Singer singer = new Singer(singerName);
                playList.setSinger(singer);
                TypeSong typeSong = new TypeSong(typeName);
                playList.setTypeSong(typeSong);
                return playList;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Singer> showSingerList() {
        List<Singer> singerList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.getConnection().prepareStatement("select * from singer");
            ResultSet resultSet = preparedStatement.executeQuery();
            Singer singer;
            while (resultSet.next()){
                singer = new Singer();
                singer.setSingerId(resultSet.getInt("singer_id"));
                singer.setSingerName(resultSet.getString("name_singer"));
                singerList.add(singer);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return singerList;
    }

    @Override
    public List<TypeSong> showTypeSongList() {
        List<TypeSong> typeSongList = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.getConnection().prepareStatement("select * from type_song");
            ResultSet resultSet = preparedStatement.executeQuery();
            TypeSong typeSong;
            while (resultSet.next()){
                typeSong = new TypeSong();
                typeSong.setTypeId(resultSet.getInt("type_id"));
                typeSong.setTypeName(resultSet.getString("name_type"));
                typeSongList.add(typeSong);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return typeSongList;
    }
}
