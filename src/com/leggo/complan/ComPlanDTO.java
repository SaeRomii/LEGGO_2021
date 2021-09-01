/*==========================
   ComPlanFeed.java
==========================*/

package com.leggo.complan;

public class ComPlanDTO
{
	private String mem_cd, mem_img, mem_nnm;	// 회원 코드, 회원 프로필 사진, 닉네임
	private String pl_cd, pl_tt, pl_stt, pl_img, pl_hits, pl_dt;	// 일정게시글코드, 제목, 소제목, 배경사진url, 조회수, 작성일시
	
	// getter / setter 구성
	public String getMem_cd()
	{
		return mem_cd;
	}
	public void setMem_cd(String mem_cd)
	{
		this.mem_cd = mem_cd;
	}
	public String getMem_img()
	{
		return mem_img;
	}
	public void setMem_img(String mem_img)
	{
		this.mem_img = mem_img;
	}
	public String getMem_nnm()
	{
		return mem_nnm;
	}
	public void setMem_nnm(String mem_nnm)
	{
		this.mem_nnm = mem_nnm;
	}
	public String getPl_cd()
	{
		return pl_cd;
	}
	public void setPl_cd(String pl_cd)
	{
		this.pl_cd = pl_cd;
	}
	public String getPl_tt()
	{
		return pl_tt;
	}
	public void setPl_tt(String pl_tt)
	{
		this.pl_tt = pl_tt;
	}
	public String getPl_stt()
	{
		return pl_stt;
	}
	public void setPl_stt(String pl_stt)
	{
		this.pl_stt = pl_stt;
	}
	public String getPl_img()
	{
		return pl_img;
	}
	public void setPl_img(String pl_img)
	{
		this.pl_img = pl_img;
	}
	public String getPl_hits()
	{
		return pl_hits;
	}
	public void setPl_hits(String pl_hits)
	{
		this.pl_hits = pl_hits;
	}
	public String getPl_dt()
	{
		return pl_dt;
	}
	public void setPl_dt(String pl_dt)
	{
		this.pl_dt = pl_dt;
	}
}
