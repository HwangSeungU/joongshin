package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;

public class MyPasswordChangeOkController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		String userId = req.getParameter("userId");
		
		mypageDAO.updatePassword(req.getParameter("newPassword"), userId);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/myAccountOk.mypage?userId=" + userId);
		return result;
	}
}
