/*============================
   ComPhotoFeed.java
============================*/

package com.leggo.comphoto;

public class ComPhotoDTO
{
	private String mem_cd, mem_img, mem_nnm;	// 회원 코드, 회원 프로필사진, 회원 닉네임
	private String pp_cd, pht_url, pp_hits, pp_dt, pp_cont, pp_lat, pp_long; // 사진게시글코드, 썸네일, 조회수, 작성일, 내용, 위도, 경도
	
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
	public String getPp_cd()
	{
		return pp_cd;
	}
	public void setPp_cd(String pp_cd)
	{
		this.pp_cd = pp_cd;
	}
	public String getPht_url()
	{
		return pht_url;
	}
	public void setPht_url(String pht_url)
	{
		this.pht_url = pht_url;
	}
	public String getPp_hits()
	{
		return pp_hits;
	}
	public void setPp_hits(String pp_hits)
	{
		this.pp_hits = pp_hits;
	}
	public String getPp_dt()
	{
		return pp_dt;
	}
	public void setPp_dt(String pp_dt)
	{
		this.pp_dt = pp_dt;
	}
	public String getPp_cont()
	{
		return pp_cont;
	}
	public void setPp_cont(String pp_cont)
	{
		this.pp_cont = pp_cont;
	}
	public String getPp_lat()
	{
		return pp_lat;
	}
	public void setPp_lat(String pp_lat)
	{
		this.pp_lat = pp_lat;
	}
	public String getPp_long()
	{
		return pp_long;
	}
	public void setPp_long(String pp_long)
	{
		this.pp_long = pp_long;
	}
	
}
