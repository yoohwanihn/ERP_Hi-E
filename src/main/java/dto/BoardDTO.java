package dto;
 
public class BoardDTO {
    private int boardNum;
    private String title;
    private String content;
    private String writer;
    private String createDate;
    private int views;
    
    public BoardDTO(int boardNum, String title, String content, String writer, String createDate) {
        this.boardNum = boardNum;
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.createDate = createDate;
        this.views = 0;
    }
 
    public int getBoardNum() {
        return boardNum;
    }
 
    public void setBoardNum(int boardNum) {
        this.boardNum = boardNum;
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
 
    public String getWriter() {
        return writer;
    }
 
    public void setWriter(String writer) {
        this.writer = writer;
    }
 
    public String getCreateDate() {
        return createDate;
    }
 
    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
    
    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }
    public void increaseViews() {
        this.views++;
    }
    
}