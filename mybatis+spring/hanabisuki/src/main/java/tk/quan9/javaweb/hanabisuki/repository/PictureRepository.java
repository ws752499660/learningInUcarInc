package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import tk.quan9.javaweb.hanabisuki.entity.Picture;

import java.util.List;

@Repository
@Mapper
public interface PictureRepository {
    public int insertPicture(Picture picture);
    public String getPathById(int id);
    public String getNameById(int id);
    public List<Picture> getPictureList();
}
