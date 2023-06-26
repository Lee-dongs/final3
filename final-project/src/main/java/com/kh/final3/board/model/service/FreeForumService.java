package com.kh.final3.board.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.final3.board.model.vo.Board;
import com.kh.final3.board.model.vo.BoardAttachment;
import com.kh.final3.common.vo.PageInfo;

public interface FreeForumService {
	
	//게시글 총 개수
	int selectListCount(Map<String, String> map);
	
	//게시글 리스트 조회
	ArrayList<Board> forumList(PageInfo pi);
	
	//게시글 상세 조회
	Board findForumDetails(int boardNo);
	
	//게시글 첨부물 조회
	ArrayList<BoardAttachment> findAttachmentList(int boardNo);
	
	//조회수 증가
	int increaseForumCount(int boardNo);
	
	//게시글 삽입
	int addForum(Board board);

	//좋아요를 누른 회원인지 아닌지 체크하는 메서드
	int checkRecommend(Map<String, Integer> map);

	//좋아요를 누른 회원과 게시판 삽입
	int addRecommend(Map<String, Integer> map);

	//좋아요 개수
	int selectRecommendCount(int boardNo);
	
	//싫어요를 누른 회원인지 아닌지 체크하는 메서드
	int checkDeprecated(Map<String, Integer> map);

	//싫어요를 누른 회원과 게시판 삽입
	int addDeprecated(Map<String, Integer> map);

	//싫어요 개수
	int selectDeprecatedCount(int boardNo);

	


}
