package memo;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MemoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemoDAO dao = new MemoDAO();

//		list(dao);
//		read(dao);
//		update(dao);
//		create(dao);
//		delete(dao);
		total(dao);

	}

	private static void total(MemoDAO dao) {
		Map map = new HashMap();
		map.put("col", "title");
		map.put("word", "윤길동");

		p("레코드 갯수 = " + dao.total(map));
	}

	private static void delete(MemoDAO dao) {
		int memono = 3;
		if (dao.delete(memono)) {
			p("성공");
		} else {
			p("실패");
		}
	}

	private static void create(MemoDAO dao) {
		MemoDTO dto = new MemoDTO();
		dto.setTitle("제출과제");
		dto.setContent("제출할 과제입니다.");

		
		if (dao.create(dto)) {
			p("삽입 완료");
		} else {
			p("실패");
		}
	}

	private static void update(MemoDAO dao) {
		MemoDTO dto = dao.read(1);
		dto.setTitle("제목 수정");
		dto.setContent("토익 시험 아주 잘봄");

		if (dao.update(dto)) {
			p(dto);
		} else {
			p("실패");
		}
	}

	private static void read(MemoDAO dao) {
		int memono = 1;
		MemoDTO dto = dao.read(memono);
		p(dto);
	}

	private static void list(MemoDAO dao) {
		Map map = new HashMap();
		map.put("col", "wname");
		map.put("word", "");
		map.put("sno", 3);
		map.put("eno", 7);
		List<MemoDTO> list = dao.list(map);

		Iterator<MemoDTO> iter = list.iterator();

		while (iter.hasNext()) {
			MemoDTO dto = iter.next();

			p(dto);
			p("======================");
		}
	}

	private static void p(MemoDTO dto) {
		p("번호 = " + dto.getMemono());
		p("제목 = " + dto.getTitle());
		p("내용 = " + dto.getContent());
		p("날짜 = " + dto.getWdate());
		p("조회수 = " + dto.getViewcnt());
	}

	private static void p(String string) {
		System.out.println(string);
	}
}
