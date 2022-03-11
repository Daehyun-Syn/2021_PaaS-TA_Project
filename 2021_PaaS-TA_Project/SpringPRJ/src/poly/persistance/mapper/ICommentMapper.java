package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.CommentDTO;
import poly.dto.ProjectsDTO;

@Mapper("CommentMapper")
public interface ICommentMapper {

	int CommentWrite(CommentDTO qDTO)throws Exception;
	
	// 댓글 등록
	
	List<CommentDTO> getCommentList(CommentDTO pDTO) throws Exception;

	// 댓글 삭제
	void deleteComment(CommentDTO aDTO) throws Exception;

}