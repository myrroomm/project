package project.dao;

import java.util.List;
import java.util.Map;

import project.vo.BoardLikeVO;
import project.vo.BoardVO;

public interface BoardLikeDao {
	public abstract void addLike(BoardLikeVO boardLikeVO);
	public abstract void deleteLike(BoardLikeVO boardLikeVO);
	public abstract int countLike(int seq);
	public abstract int searchId(BoardLikeVO boardLikeVO);
	public abstract void updateCount(int seq);
	public abstract void checkLike(Map<String,Object> map);
}
