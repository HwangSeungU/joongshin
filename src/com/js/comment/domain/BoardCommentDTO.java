package com.js.comment.domain;

public class BoardCommentDTO {
	private Long commentId;
	private Long boardId;
	private Long userId;
	private String commentComments;
	private String commentRegisterDate;
	private String boardTitle;
	
	public BoardCommentDTO() {;}

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getCommentComments() {
		return commentComments;
	}

	public void setCommentComments(String commentComments) {
		this.commentComments = commentComments;
	}

	public String getCommentRegisterDate() {
		return commentRegisterDate;
	}

	public void setCommentRegisterDate(String commentRegisterDate) {
		this.commentRegisterDate = commentRegisterDate;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	@Override
	public String toString() {
		return "BoardCommentDTO [commentId=" + commentId + ", boardId=" + boardId + ", userId=" + userId
				+ ", commentComments=" + commentComments + ", commentRegisterDate=" + commentRegisterDate
				+ ", boardTitle=" + boardTitle + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentId == null) ? 0 : commentId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardCommentDTO other = (BoardCommentDTO) obj;
		if (commentId == null) {
			if (other.commentId != null)
				return false;
		} else if (!commentId.equals(other.commentId))
			return false;
		return true;
	}

}
