package project.service;

import java.util.List;

import org.springframework.stereotype.Service;


import project.dao.BoardDao;
import project.vo.BoardVO;
import project.vo.MemberVO;
import project.vo.ReplyVO;

@Service
public class BoardServiceMine implements BoardService{
	private BoardDao boardDao;
	

	
	public BoardDao getBoardDao() {
		return boardDao;
	}
	
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	

	@Override
	public List<BoardVO> list() {
		return boardDao.list();
	}

	@Override
	public void write(BoardVO booksVO) {
		boardDao.insert(booksVO);
		
	}

	@Override
	public BoardVO read(int seq) {
		return boardDao.select(seq);
	}

	@Override
	public List<BoardVO> search(String search) {
		return boardDao.search(search);
	}

	@Override
	public void delete(int seq) {
		boardDao.delete(seq);
		
	}

	@Override
	public BoardVO searchBoard(int seq) {
		
		return boardDao.searchBoard(seq);
	}

	@Override
	public List<MemberVO> idList(String search) {
		return boardDao.idList(search);
	}

	@Override
	public MemberVO searchMember(String id) {
		
		return boardDao.searchMember(id);
	}

	@Override
	public List<ReplyVO> listComment() {
		return boardDao.listComment();
	}

	@Override
	public List<String> friendId(String id) {
		return boardDao.friendId(id);
	}

	@Override
	public int countPending(String id) {
		return boardDao.countPending(id);
	}
	
}
