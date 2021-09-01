/*===========================
   ComPhotoController.java
===========================*/

package com.leggo.comphoto;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ComPhotoController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 사진 게시글 피드 페이지
	@RequestMapping(value="comphotofeed.action",method=RequestMethod.GET)
	public String comphotofeed(ModelMap model, HttpServletRequest request)
	{
		String result = null;
		
		IComPhotoDAO dao = sqlSession.getMapper(IComPhotoDAO.class);
		
		model.addAttribute("list", dao.list());
		
		result = "/WEB-INF/views/ComPhotoFeed.jsp";
		
		return result;
	}
	
	// 사진 게시글 조회 페이지
	@RequestMapping(value="comphoto.action",method=RequestMethod.GET)
	public String comphoto(ModelMap model, HttpServletRequest request)
	{
		String result = null;
		
		IComPhotoDAO dao = sqlSession.getMapper(IComPhotoDAO.class);
		
		model.addAttribute("list", dao.list());
		
		result = "/WEB-INF/views/ComPhoto.jsp";
		
		return result;
	}
}
