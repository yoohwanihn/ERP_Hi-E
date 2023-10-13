package dto;

public class EventDTO {  // 클래스 이름 변경

    private int boardNum;
    private String title;
    private String content;
    private String writer;
    private String createDate;  // 행사날짜
    private String address;    // 주소

    // 기본 생성자
    public EventDTO() {
    }

    // 모든 필드를 포함하는 생성자
    public EventDTO(int boardNum, String title, String content, String writer, String createDate, String address) {
        this.boardNum = boardNum;
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.createDate = createDate;
        this.address = address;
    }

    // 게터와 세터 메소드
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
   
    public String getAddress() {
       return address;
    }

    public void setAddress(String address) {
       this.address = address;
    }   
}
