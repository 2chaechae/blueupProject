package blueup.user.paging;

public class ReviewCriteria {
	private int page;
	private int perPageNum;
	int startRow;
	
	public void setPageStart() {
		this.startRow = (this.page-1)*perPageNum;
	}
	
	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public ReviewCriteria() {
		this.page = 1;
		this.perPageNum = 5;
	}
	
	public int getPage() {
		return page;
	}
	
	public void setPage(int page) {
		if(page<=0) {
			this.page = 1;
		}else {
			this.page = page;
		}
	}
	
	public int getPerPageNum() {
		return perPageNum;
	}
	
	public void setPerPageNum(int pageCount){
		int cnt = this.perPageNum;
		if(pageCount!=cnt) {
			this.perPageNum = cnt;
		}else {
			this.perPageNum = pageCount;
		}
	}
}
