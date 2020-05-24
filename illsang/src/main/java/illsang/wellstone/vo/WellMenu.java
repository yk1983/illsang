package illsang.wellstone.vo;

import java.util.List;
import java.util.Map;

public class WellMenu {
	
	private int menuCd;
	private String menuNm;
	private int pMenuCd;
	private String menuTp;
	private String menuUrl;
	private String useYn;
	private int sortNo;
	
	public WellMenu() {
		super();
	}

	public WellMenu(int menuCd, String menuNm, int pMenuCd, String menuTp, String menuUrl, String useYn,
			int sortNo) {
		super();
		this.menuCd = menuCd;
		this.menuNm = menuNm;
		this.pMenuCd = pMenuCd;
		this.menuTp = menuTp;
		this.menuUrl = menuUrl;
		this.useYn = useYn;
		this.sortNo = sortNo;
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

	@Override
	public String toString() {
		return "WellMenuList [menuCd=" + menuCd + ", menuNm=" + menuNm + ", pMenuCd=" + pMenuCd + ", menuTp=" + menuTp
				+ ", menuUrl=" + menuUrl + ", useYn=" + useYn + ", sortNo=" + sortNo + "]";
	}

}
