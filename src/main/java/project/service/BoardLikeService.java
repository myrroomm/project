package project.service;

import java.util.Map;

import project.dao.BoardLikeDao;
import project.vo.BoardLikeVO;




public interface BoardLikeService {
	public abstract void addLike(BoardLikeVO boardLikeVO);
	public abstract void deleteLike(BoardLikeVO boardLikeVO);
	public abstract int countLike(int seq);
	public abstract int searchId(BoardLikeVO boardLikeVO);
	public abstract void updateCount(int seq);
	public abstract void checkLike(Map<String, Object> map);
}
