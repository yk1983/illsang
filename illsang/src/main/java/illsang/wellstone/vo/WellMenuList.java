package illsang.wellstone.vo;

import java.util.List;

public class WellMenuList {
	
	private int menuCd;
	private String menuNm;
	private int pMenuCd;
	private String menuTp;
	private String menuUrl;
	private String useYn;
	private int sortNo;
	private List<WellMenu> list;
	
	public WellMenuList() {
		super();
	}

	public WellMenuList(int menuCd, String menuNm, int pMenuCd, String menuTp, String menuUrl, String useYn, int sortNo,
			List<WellMenu> list) {
		super();
		this.menuCd = menuCd;
		this.menuNm = menuNm;
		this.pMenuCd = pMenuCd;
		this.menuTp = menuTp;
		this.menuUrl = menuUrl;
		this.useYn = useYn;
		this.sortNo = sortNo;
		this.list = list;
	}

	public int getMenuCd() {
		return menuCd;
	}

	public void setMenuCd(int menuCd) {
		this.menuCd = menuCd;
	}

	public String getMenuNm() {
		return menuNm;
	}

	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}

	public int getpMenuCd() {
		return pMenuCd;
	}

	public void setpMenuCd(int pMenuCd) {
		this.pMenuCd = pMenuCd;
	}

	public String getMenuTp() {
		return menuTp;
	}

	public void setMenuTp(String menuTp) {
		this.menuTp = menuTp;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public int getSortNo() {
		return sortNo;
	}

	public void setSortNo(int sortNo) {
		this.sortNo = sortNo;
	}

	public List<WellMenu> getList() {
		return list;
	}

	public void setList(List<WellMenu> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "WellMenuList [menuCd=" + menuCd + ", menuNm=" + menuNm + ", pMenuCd=" + pMenuCd + ", menuTp=" + menuTp
				+ ", menuUrl=" + menuUrl + ", useYn=" + useYn + ", sortNo=" + sortNo + ", list=" + list + "]";
	}
	
}
