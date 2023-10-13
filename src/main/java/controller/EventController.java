package controller;
 
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import dto.EventDTO; // EventDTO로 변경
 
@WebServlet("*.do")
public class EventController extends HttpServlet { // 클래스 이름 변경
    private static final long serialVersionUID = 1L;
      
    private int boardNum;
    private List<EventDTO> eventList; // 변수명 및 타입 변경
    
    public EventController() {
        super();
        boardNum = 1;
        eventList = new ArrayList<>();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
 
    public void doProcess(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
 
        String requestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = requestURI.substring(contextPath.length());
        System.out.println("command = " + command);
        
        String page = "";
        boolean isRedirect = false;
        
        if(command.equals("/eventList.do")) { // 경로 변경
            request.setAttribute("list", eventList); // 변수명 변경
            page = "eventList.jsp"; // 페이지 경로 변경
        }
        
        if(command.equals("/regEventForm.do")) { // 경로 변경
            page="event_write_form.jsp"; // 페이지 경로 변경
        }
        
        if(command.equals("/regEvent.do")) { // 경로 변경
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String writer = request.getParameter("writer");
            String createDate = request.getParameter("createDate");
            String address = request.getParameter("address");
            
            EventDTO event = new EventDTO(boardNum, title, content, writer, createDate ,address); // EventDTO로 변경
            boardNum++;
            
            eventList.add(event); // 변수명 변경
            
            page ="eventList.do"; // 경로 변경
            isRedirect = true;
        }
        
        if(command.equals("/eventDetail.do")) { // 경로 변경
            int num = Integer.parseInt(request.getParameter("boardNum"));
            
            for(EventDTO event: eventList) { // EventDTO 및 변수명 변경
                if(event.getBoardNum() == num) {
                    request.setAttribute("event", event); // 변수명 변경
                }
            }
            
            page="eventDetail.jsp"; // 페이지 경로 변경
        }
        
        if(command.equals("/deleteEvent.do")) { // 경로 변경
            int num = Integer.parseInt(request.getParameter("boardNum"));
            
            for(int i =0; i<eventList.size(); i++) { // 변수명 변경
                if(eventList.get(i).getBoardNum() == num) { // 변수명 변경
                    eventList.remove(i); // 변수명 변경
                }
            }
            
            page="eventList.do"; // 경로 변경
        }
        
        if(command.equals("/updateEventForm.do")) { // 경로 변경
            int num = Integer.parseInt(request.getParameter("boardNum"));
            
            for(EventDTO event : eventList) { // EventDTO 및 변수명 변경
                if(event.getBoardNum() == num) { // 변수명 변경
                    request.setAttribute("event", event); // 변수명 변경
                }
            }
            
            page = "update_event_form.jsp"; // 페이지 경로 변경
        }
        
        if(command.equals("/updateEvent.do")) { // 경로 변경
            String title = request.getParameter("title");
            String writer = request.getParameter("writer");
            String createDate = request.getParameter("createDate");
            String content = request.getParameter("content");
            
            int num = Integer.parseInt(request.getParameter("boardNum"));
            
            for(EventDTO event : eventList) { // EventDTO 및 변수명 변경
                if(event.getBoardNum() == num) { // 변수명 변경
                    event.setTitle(title); // 변수명 변경
                    event.setWriter(writer); // 변수명 변경
                    event.setContent(content); // 변수명 변경
                    event.setCreateDate(createDate); // 변수명 변경
                }
            }
            
            page="eventList.do"; // 경로 변경
        }
        
        if(isRedirect) {
            response.sendRedirect(page);
        }
        else {
            RequestDispatcher dispatcher = request.getRequestDispatcher(page);
            dispatcher.forward(request, response);
        }     
    }    
}
