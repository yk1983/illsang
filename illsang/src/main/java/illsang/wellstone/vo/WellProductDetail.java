package illsang.wellstone.vo;

public class WellProductDetail {
	
	private String ctgrCd;
	private String prdCd;
	private String detailCd;
	private String hrz;
	private String vrt;
	private String thk;
	private String areaBox;
	private String nmbrBox;
	private String wghtArea;
	private String boxcnTon;
	private String lineYn;
	private String corner;
	
	public WellProductDetail() {
		super();
	}

	public WellProductDetail(String ctgrCd, String prdCd, String detailCd, String hrz, String vrt, String thk,
			String areaBox, String nmbrBox, String wghtArea, String boxcnTon, String lineYn, String corner) {
		super();
		this.ctgrCd = ctgrCd;
		this.prdCd = prdCd;
		this.detailCd = detailCd;
		this.hrz = hrz;
		this.vrt = vrt;
		this.thk = thk;
		this.areaBox = areaBox;
		this.nmbrBox = nmbrBox;
		this.wghtArea = wghtArea;
		this.boxcnTon = boxcnTon;
		this.lineYn = lineYn;
		this.corner = corner;
	}

	public String getCtgrCd() {
		return ctgrCd;
	}

	public void setCtgrCd(String ctgrCd) {
		this.ctgrCd = ctgrCd;
	}

	public String getPrdCd() {
		return prdCd;
	}

	public void setPrdCd(String prdCd) {
		this.prdCd = prdCd;
	}

	public String getDetailCd() {
		return detailCd;
	}

	public void setDetailCd(String detailCd) {
		this.detailCd = detailCd;
	}

	public String getHrz() {
		return hrz;
	}

	public void setHrz(String hrz) {
		this.hrz = hrz;
	}

	public String getVrt() {
		return vrt;
	}

	public void setVrt(String vrt) {
		this.vrt = vrt;
	}

	public String getThk() {
		return thk;
	}

	public void setThk(String thk) {
		this.thk = thk;
	}

	public String getAreaBox() {
		return areaBox;
	}

	public void setAreaBox(String areaBox) {
		this.areaBox = areaBox;
	}

	public String getNmbrBox() {
		return nmbrBox;
	}

	public void setNmbrBox(String nmbrBox) {
		this.nmbrBox = nmbrBox;
	}

	public String getWghtArea() {
		return wghtArea;
	}

	public void setWghtArea(String wghtArea) {
		this.wghtArea = wghtArea;
	}

	public String getBoxcnTon() {
		return boxcnTon;
	}

	public void setBoxcnTon(String boxcnTon) {
		this.boxcnTon = boxcnTon;
	}

	public String getLineYn() {
		return lineYn;
	}

	public void setLineYn(String lineYn) {
		this.lineYn = lineYn;
	}

	public String getCorner() {
		return corner;
	}

	public void setCorner(String corner) {
		this.corner = corner;
	}

	@Override
	public String toString() {
		return "WellProductDetail [ctgrCd=" + ctgrCd + ", prdCd=" + prdCd + ", detailCd=" + detailCd + ", hrz=" + hrz
				+ ", vrt=" + vrt + ", thk=" + thk + ", areaBox=" + areaBox + ", nmbrBox=" + nmbrBox + ", wghtArea="
				+ wghtArea + ", boxcnTon=" + boxcnTon + ", lineYn=" + lineYn + ", corner=" + corner + "]";
	}

}
