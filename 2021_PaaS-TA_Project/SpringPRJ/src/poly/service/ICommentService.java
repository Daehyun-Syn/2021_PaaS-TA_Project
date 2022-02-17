package poly.service;

import java.util.List;

import poly.dto.CommentDTO;
import poly.dto.ProjectsDTO;

public interface ICommentService {

	// 댓글 작성
	int writeComment(CommentDTO qDTO) throws Exception;

	List<CommentDTO> getCommentList(CommentDTO pDTO) throws Exception;

	// 댓글 삭제
	int deleteComment(CommentDTO aDTO) throws Exception;



}