package tk.quan9.javaweb.hanabisuki.service;

import org.springframework.web.multipart.MultipartFile;
import tk.quan9.javaweb.hanabisuki.entity.Picture;
import tk.quan9.javaweb.hanabisuki.entity.User;

import java.util.List;

public interface PictureService {
    public String upload(MultipartFile picture, User user);
    public String getPathById(int id);
    public String getNameById(int id);
    public List<Picture> getAllPictures();
}
