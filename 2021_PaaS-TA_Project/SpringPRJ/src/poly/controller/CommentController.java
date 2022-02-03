package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.dto.CommentDTO;
import poly.dto.ProjectsDTO;
import poly.service.ICommentService;
import poly.service.impl.CommentService;
import poly.util.CmmUtil;
import poly.util.PagingVO;


@Controller("CommentController")
public class CommentController {

	@Resource(name="CommentService")
	private ICommentService CommentService;
	
	private Logger log = Logger.getLogger(this.getClass());
	
	
	//댓글작성
	@RequestMapping("comment/write")
	public String comment(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session) throws Exception {
		
		log.info("######### 댓글 쓰기 시작 ! #########");
		String msg = "";
		
		String contents = request.getParameter("contents");
		String id = request.getParameter("comment_id");
		
		log.info("contents : " + contents);
		log.info("id : " + id);
		
		String seq = CmmUtil.nvl((String)session.getAttribute("no"));
		
		
		CommentDTO qDTO = new CommentDTO();
		qDTO.setBoard_seq(seq);
		qDTO.setComment_contents(contents);
		qDTO.setComment_id(id);
		
		int res = CommentService.writeComment(qDTO);
		
		if(res==0) {
			log.info("댓글 작성 실패");
			msg = "댓글 작성에 실패하였습니다.";
		}else if(res == 1) {
			log.info("댓글 작성 성공");
			msg = "댓글 작성에 성공하였습니다.";
		}
		
		model.addAttribute("res", String.valueOf(res));	
		model.addAttribute("msg", msg);
		
		return "/alert/commentAlert";
	}
	
	// ========================================= 제 로직
	@RequestMapping(value = "community/commentdelete")
	public String commentdelete(HttpServletRequest request, ModelMap model) throws Exception {
		
		log.info("댓글 삭제 시작 ! ! ! ! !");

		String seq = CmmUtil.nvl(request.getParameter("number").toString());
		//String seq = CmmUtil.nvl((String)request.getParameter("comment_seq"));
		log.info(seq);
		
		CommentDTO aDTO = new CommentDTO();
		aDTO.setComment_seq(seq);
		
		int res = CommentService.deleteComment(aDTO);

		
		if (res == 0) {
			log.info("게시글 삭제 실패");
		} else if (res == 1) {
			log.info("게시글 삭제 성공");
		}
		
		model.addAttribute("res", String.valueOf(res));	
		return "/alert/commentdeleteAlert";
	}
	 
	     
	      
	    

	
	
}