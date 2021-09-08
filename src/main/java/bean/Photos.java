package bean;

/**
 * @author : author
 * @date : 11:22 2021/7/3
 */
public class Photos {
    private int id;
    private String title;
    private String content;
    private String date;
    private String imgPath = "images/default.(jpg,png,bmp,gif,jpeg)";
    private String type;
    private String tips;
    private String source;

    public Photos() {
    }

    public Photos(int id, String title, String content, String date, String imgPath, String type) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.date = date;
        this.imgPath = imgPath;
        this.type = type;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        // 要求给定的图书封面图书路径不能为空
        if (imgPath != null && !"".equals(imgPath)) {
            this.imgPath = imgPath;
        }
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Photos{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", date='" + date + '\'' +
                ", imgPath='" + imgPath + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}

