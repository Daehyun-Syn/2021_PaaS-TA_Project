package poly.dto;

public class CommentDTO {

	private String comment_seq;
	private String comment_contents;
	private String comment_id;
	private String comment_rdt;
	private String comment_cdt;
	private String board_seq;
	
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	public String getComment_seq() {
		return comment_seq;
	}
	public void setComment_seq(String comment_seq) {
		this.comment_seq = comment_seq;
	}
	public String getComment_contents() {
		return comment_contents;
	}
	public void setComment_contents(String comment_contents) {
		this.comment_contents = comment_contents;
	}
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_rdt() {
		return comment_rdt;
	}
	public void setComment_rdt(String comment_rdt) {
		this.comment_rdt = comment_rdt;
	}
	public String getComment_cdt() {
		return comment_cdt;
	}
	public void setComment_cdt(String comment_cdt) {
		this.comment_cdt = comment_cdt;
	}
	
	
	
}