package guest;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GuestTest {

	public static void main(String[] args) {
		GuestDAO dao = new GuestDAO();
//		create(dao);
//		list(dao);
//		delete(dao);
//		update(dao);
//		passCheck(dao);
//		read(dao);
//		upViewcnt(dao);
		total(dao);

	}

	private static void total(GuestDAO dao) {
		Map map = new HashMap();
		map.put("col", "wname");
		map.put("word", "1");

		p("레코드 갯수 = " + dao.total(map));
	}

	private static void delete(GuestDAO dao) {
		int guestno = 3;
		if (dao.delete(guestno)) {
			p("삭제 성공");
		} else
			p("삭제 실패");
	}

	private static void update(GuestDAO dao) {
		GuestDTO dto = dao.read(2);
		dto.setTitle("바뀐것");
		dto.setContent("read로 바꿨음");
		dto.setWname("홍길동");

		if (dao.update(dto)) {
			p("업데이트 성공");
		} else
			p("실패");
	}

	private static void passCheck(GuestDAO dao) {
		Map map = new HashMap();
		map.put("guestno", 2);
		map.put("passwd", "1234");
		if (dao.passCheck(map))
			p("올바른 비번입니다.");
		else
			p("실패입니다");
	}

	private static void read(GuestDAO dao) {
		int guestno = 2;
		dao.upViewcnt(guestno);
		GuestDTO dto = dao.read(guestno);
		p(dto);
	}

	private static void upViewcnt(GuestDAO dao) {
		int guestno = 2;
		dao.upViewcnt(guestno);

	}

	private static void list(GuestDAO dao) {
		Map map = new HashMap();
		map.put("col", "wname");
		map.put("word", "");
		map.put("sno", 3);
		map.put("eno", 7);

		List<GuestDTO> list = dao.list(map);
		Iterator<GuestDTO> iter = list.iterator();

		while (iter.hasNext()) {
			GuestDTO dto = iter.next();
			p(dto);
			p("========================");
		}
	}

	private static void create(GuestDAO dao) {
		GuestDTO dto = new GuestDTO();
		dto.setWname("홍길동");
		dto.setTitle("create클래스");
		dto.setContent("테스트중");
		dto.setPasswd("1234");

		if (dao.create(dto)) {
			p("생성 성공");
		} else
			p("생성 실패");
	}

	private static void p(GuestDTO dto) {
		p("번호 = " + dto.getGuestno());
		p("예약자 = " + dto.getWname());
		p("제목 = " + dto.getTitle());
		p("내용 = " + dto.getContent());
		p("날짜 = " + dto.getWdate());
		p("조휘수 = " + dto.getViewcnt());
	}

	private static void p(String string) {
		System.out.println(string);
	}

}
