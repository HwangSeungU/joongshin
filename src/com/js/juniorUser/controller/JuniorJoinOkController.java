/*프론트 컨트롤러에서 필터링되어 넘어와서 회원가입을 확인해주는 컨트롤러*/
package com.js.juniorUser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.juniorUser.dao.JuniorUserDAO;
import com.js.juniorUser.domain.JuniorUserDTO;

public class JuniorJoinOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		JuniorUserDAO juniorUserDAO = new JuniorUserDAO();
//		JuniorUserDTO juniorUserDTO = new JuniorUserDTO();
//		Result result = new Result();
//	
//		
//		juniorUserDTO.setUsername(req.getParameter("userName"));
//		juniorUserDTO.setUserPassword(req.getParameter("userPassword"));
//		juniorUserDTO.setUserEmail(req.getParameter("userEmail"));
//		juniorUserDTO.setUserPhonenumber(req.getParameter("userPhonenumber"));
//		juniorUserDTO.setResume(req.getParameter("resume"));
//	
//		
//		juniorUserDAO.insert(juniorUserDTO);
//		
//		result.setRedirect(true);
//		result.setPath(req.getContextPath() + "/login.juniorUser");
//		return result;
		return null;
	}
}
















