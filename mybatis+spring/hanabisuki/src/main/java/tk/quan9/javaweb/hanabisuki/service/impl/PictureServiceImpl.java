package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import tk.quan9.javaweb.hanabisuki.entity.Picture;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.repository.PictureRepository;
import tk.quan9.javaweb.hanabisuki.repository.UserRepository;
import tk.quan9.javaweb.hanabisuki.service.PictureService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
public class PictureServiceImpl implements PictureService{
    @Autowired
    private PictureRepository pictureRepository;
    @Autowired
    private UserRepository userRepository;

    final private String filePath="D:/wily/projects/learn/mybatis/hanabisuki/picture/";


    @Override
    public String upload(MultipartFile picture, User user) {
        File file=new File(filePath);
        if(!file.exists()){
            file.mkdirs();
        }
        String originalFileName = picture.getOriginalFilename();//获取原始图片的扩展名
        String newFileName = UUID.randomUUID()+originalFileName;
        String newFilePath=filePath+newFileName; //新文件的路径
        try {
            picture.transferTo(new File(newFilePath));  //将传来的文件写入新建的文件
            savePictureAndUpdateUserPicture(newFileName,newFilePath,user);
            return newFileName;
        }catch (IllegalStateException e ) {
            return "-1";
        }catch(IOException e1){
            return "-1";
        }
    }

    @Override
    public String getPathById(int id) {
        return pictureRepository.getPathById(id);
    }

    @Override
    public String getNameById(int id) {
        return pictureRepository.getNameById(id);
    }

    @Override
    public List<Picture> getAllPictures() {
        return pictureRepository.getPictureList();
    }

    private void savePictureAndUpdateUserPicture(String fileName, String filePath, User user){
        Picture picture=new Picture();
        picture.setFileName(fileName);
        picture.setPath(filePath);
        picture.setUserId(user.getId());
        pictureRepository.insertPicture(picture);
        user.setPictureId(picture.getId());
//        userRepository.updatePictureIdById(user.getId(),picture.getId());
    }
}