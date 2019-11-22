package notice;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import guest.GuestDAO;
import guest.GuestDTO;

public class NoticeTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NoticeDAO dao = new NoticeDAO();
		//create(dao);
		list(dao);
		//update(dao);
		//read(dao);
		//passCheck(dao);
		//upViewcnt(dao);
		//delete(dao);

	}

	private static void update(NoticeDAO dao) {
		// TODO Auto-generated method stub
		NoticeDTO dto = dao.read(1);
		
		dto.setTitle("제목은");
		dto.setContent("내용운");
		
		if(dao.update(dto))
			p("성공");
		else
			p("실패");
		
	}

	private static void delete(NoticeDAO dao) {
		// TODO Auto-generated method stub
		int no = 3;
		
		if(dao.delete(no))
			p("성공");
		else
			p("실패");
		
	}

	private static void upViewcnt(NoticeDAO dao) {
		// TODO Auto-generated method stub
		int no = 1;
		dao.upViewcnt(no);
	}

	private static void passCheck(NoticeDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		map.put("no", 1);
		map.put("passwd", "1234");
		
		if(dao.passCheck(map))
			p("성공");
		else
			p("실패");
		
		
		
		
	}

	private static void read(NoticeDAO dao) {
		// TODO Auto-generated method stub
		int no = 3;
		NoticeDTO dto = dao.read(no);
		
		p(dto);
		
		
		
		
	}

	private static void list(NoticeDAO dao) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		
		map.put("col", "no");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);
		List<NoticeDTO> list = dao.list(map);
		Iterator<NoticeDTO> iter = list.iterator();
		
		while(iter.hasNext()) {
			NoticeDTO dto = iter.next();
			
			p(dto);
			p("-----------");
			
		}
		
	}


	private static void p(NoticeDTO dto) {
		// TODO Auto-generated method stub
		p("번호: " + dto.getNo());
		p("제목: " + dto.getTitle());
		p("내용: " + dto.getContent());
		p("글쓴이: " + dto.getId());
		p("날짜: " + dto.getWdate());
		p("조회수: " + dto.getViewcnt());
		
	}

	private static void create(NoticeDAO dao) {
		// TODO Auto-generated method stub
		NoticeDTO dto = new NoticeDTO();
		
		dto.setTitle("제목");
		dto.setContent("내용");
		dto.setPasswd("1234");
		
		if(dao.create(dto))
			p("성공");
		else
			p("실패");
		
	}

	private static void p(String string) {
		// TODO Auto-generated method stub
		System.out.println(string);
	}

}
