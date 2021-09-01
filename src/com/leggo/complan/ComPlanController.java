/*===========================
   ComPlanController.java
===========================*/

package com.leggo.complan;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ComPlanController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 일정 구경 피드 페이지
	@RequestMapping(value="complanfeed.action",method=RequestMethod.GET)
	public String complanfeed(ModelMap model, HttpServletRequest request)
	{
		String result = null;
		
		IComPlanDAO dao = sqlSession.getMapper(IComPlanDAO.class);
		
		model.addAttribute("list", dao.list());
		
		result = "/WEB-INF/views/ComPlanFeed.jsp";
		
		return result;
	}
	
	// 일정 게시글 조회 페이지
	@RequestMapping(value="comtrip.action",method=RequestMethod.GET)
	public String complan(ModelMap model, HttpServletRequest request)
	{
		String result = null;
		
		IComPlanDAO dao = sqlSession.getMapper(IComPlanDAO.class);
		
		model.addAttribute("list", dao.list());
		
		result = "/WEB-INF/views/ComPlan.jsp";
		
		return result;
	}
}
