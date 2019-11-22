package join;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import join.JoinDTO;

public class JoinTest {

	public static void main(String[] args) {
		JoinDAO dao = new JoinDAO();
//		idCheck(dao);
//		emailCheck(dao);
//		create(dao);
//		list(dao);
//		total(dao);
//		read(dao);
		update(dao);
	}

	private static void update(JoinDAO dao) {
		JoinDTO dto = dao.read("user1");

		dto.setJname("이선용");
		dto.setTel("010-0000-1234");
		dto.setEmail("asdb@mail.com");
		dto.setZipcode("123456");
		dto.setAddress1("강원도 도계");
		dto.setAddress2("무슨면");
		dto.setZipcode("00000");
		dto.setJob("A02");

		if (dao.update(dto)) {
			p("성공");
		} else {
			p("실패");
		}
	}

	private static void read(JoinDAO dao) {
		JoinDTO dto = dao.read("user1");

		p(dto);
	}

	private static void total(JoinDAO dao) {
		Map map = new HashMap();
		map.put("col", "id");
		map.put("word", "1");
		p("레코드 갯수 = " + dao.total(map));
	}

	private static void list(JoinDAO dao) {
		Map map = new HashMap();
		map.put("col", "id");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);
		List<JoinDTO> list = dao.list(map);

		Iterator<JoinDTO> iter = list.iterator();

		while (iter.hasNext()) {
			JoinDTO dto = iter.next();
			p(dto);
			p("---------------------");
		}

	}

	private static void p(JoinDTO dto) {
		p("id = " + dto.getId());
		p("이름 = " + dto.getJname());
		p("email = " + dto.getEmail());
		p("tel = " + dto.getTel());
		p("우편번호 = " + dto.getZipcode());
		p("주소1 = " + dto.getAddress1());
		p("주소2 = " + dto.getAddress2());
		p("직업 = " + dto.getJob());
		p("사진 = " + dto.getFname());
		p("등록날짜 = " + dto.getJdate());
	}

	private static void create(JoinDAO dao) {
		JoinDTO dto = new JoinDTO();
		dto.setId("관리자");
		dto.setEmail("test@mail.com");
		dto.setJname("홍길동");
		dto.setPasswd("1234");
		dto.setTel("010-8989-8989");
		dto.setZipcode("12345");
		dto.setJob("A01");
		dto.setAddress1("서울시 종로구 관철동 젊음의 거리");
		dto.setFname("member.jpg");

		if (dao.create(dto)) {
			p("성공");
		} else {
			p("실패");
		}
	}

	private static void emailCheck(JoinDAO dao) {
		if (dao.duplicateEmail("email1@mail.com")) {
			p("중복된 이메일");
		} else {
			p("사용 가능한 이메일");
		}
	}

	private static void idCheck(JoinDAO dao) {
		if (dao.duplicateID("user1")) {
			p("중복된 아이디");
		} else {
			p("사용 가능한 아이디");
		}
	}

	private static void p(String string) {
		System.out.println(string);
	}

}
