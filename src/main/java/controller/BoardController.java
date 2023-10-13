package controller;
 
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import dto.BoardDTO;
 
 
@WebServlet("*.board")
public class BoardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private int boardNum= 1;
    private List<BoardDTO> boardlist;
       
   
    public BoardController() {
        super();
        boardlist = new ArrayList<>();
        // 글 등록 해줄 데이터 공간을 생성해준다.
        
    }
 
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
 
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
 
 
        String requestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = requestURI.substring(contextPath.length());
        System.out.println("command = " + command);
        
        String page = "";
        
        
        
        if(command.equals("/boardList.board"))
        {
            
            request.setAttribute("list", boardlist);
            
            page = "boardList.jsp";
        }
        
        
        if(command.equals("/regBoardForm.board"))
        {
            page = "board_write_form.jsp";
        }
        
        if(command.equals("/regBoard.board"))
        {
        	String title = request.getParameter("title");
            String writer = request.getParameter("writer");
            String content = request.getParameter("content");
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String createDate = sdf.format(new Date());

            BoardDTO board = new BoardDTO(boardNum, title, content, writer, createDate);

            boardNum++;
            boardlist.add(board);

            page = "boardList.board";
            // boardList로 돌아가서 
            // 데이터를 적재할 request.setAtrribute("list", boardlist)를 추가해줘야한다.
            
        }
        
        if(command.equals("/boardDetail.board"))
        {
            int num= Integer.parseInt(request.getParameter("boardNum"));
            
            for(BoardDTO board: boardlist) {
                if(board.getBoardNum() == num) {
                    board.increaseViews();  // 조회수 1 증가
                    request.setAttribute("board", board);
                }
            }
            page = "boardDetail.jsp";
        }
        
        
        if(command.equals("/delete.board"))
        {
            int num = Integer.parseInt(request.getParameter("boardNum")); 
            for(int i =0; i<boardlist.size(); i++)
            {
                if(boardlist.get(i).getBoardNum() == num)
                {
                    boardlist.remove(i);
                }
            }
        }
        
        if(command.equals("/updateBoardForm.board"))
        {
            int num = Integer.parseInt(request.getParameter("boardNum"));
 
            for (BoardDTO board : boardlist) {
                if (board.getBoardNum() == num) {
                    request.setAttribute("board", board);
                }
            }
            // 수정하고자 하는 게시글의 정보를 jsp에 보내줘야함.
            page = "update_board_form.jsp";
            
        }
        
        if(command.equals("/updateBoard.board"))
        {
            String title = request.getParameter("title");
            String writer = request.getParameter("writer");
            String createDate = request.getParameter("createDate");
            String content = request.getParameter("content");
            int num = Integer.parseInt(request.getParameter("boardNum"));
            
            for(BoardDTO board : boardlist) {
                if(board.getBoardNum()==num)
                {
                    board.setTitle(title);
                    board.setWriter(writer);
                    board.setContent(content);
                    board.setCreateDate(createDate);
                }
            }
            
            page="boarList.board";
        }
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
        
    }
 
}