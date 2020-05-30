package illsang.wellstone.vo;

import java.util.List;

public class WellProductDetailList {
	
	private List<WellProductDetail> list;

	public WellProductDetailList() {
		super();
	}

	public WellProductDetailList(List<WellProductDetail> list) {
		super();
		this.list = list;
	}

	public List<WellProductDetail> getList() {
		return list;
	}

	public void setList(List<WellProductDetail> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "WellProductDetailList [list=" + list + "]";
	}

}
