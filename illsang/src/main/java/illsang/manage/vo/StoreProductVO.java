package illsang.manage.vo;

public class StoreProductVO {
	
	private int prdCd;
	private String prdNm;
	private int price;
	private String useYn;
	
	public StoreProductVO() {
		super();
	}

	public StoreProductVO(int prdCd, String prdNm, int price, String useYn) {
		super();
		this.prdCd = prdCd;
		this.prdNm = prdNm;
		this.price = price;
		this.useYn = useYn;
	}

	public int getPrdCd() {
		return prdCd;
	}

	public void setPrdCd(int prdCd) {
		this.prdCd = prdCd;
	}

	public String getPrdNm() {
		return prdNm;
	}

	public void setPrdNm(String prdNm) {
		this.prdNm = prdNm;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	@Override
	public String toString() {
		return "StoreProductVO [prdCd=" + prdCd + ", prdNm=" + prdNm + ", price=" + price + ", useYn=" + useYn + "]";
	}

}
