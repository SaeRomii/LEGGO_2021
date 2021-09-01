/*=================================
   IComPhotoDAO.java
   - 인터페이스
=================================*/

package com.leggo.comphoto;

import java.util.ArrayList;

public interface IComPhotoDAO
{
	// 사진 게시글 목록 페이지 리스트
	public ArrayList<ComPhotoDTO> list();
	
	// 사진 게시글 수정
	public int modify(ComPhotoDTO p);
	
	// 사진 게시글 삭제
	public int remove(ComPhotoDTO p);
}
