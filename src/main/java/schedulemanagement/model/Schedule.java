package schedulemanagement.model;

public class Schedule {

	private int sid;
	private String sdate;
	private String stime;
	private String etime;
	private String venue;
	private String appno;
	private String did;
	
	
	public Schedule(int sid, String sdate, String stime, String etime, String venue, String appno, String did) {
		super();
		this.sid = sid;
		this.sdate = sdate;
		this.stime = stime;
		this.etime = etime;
		this.venue = venue;
		this.appno = appno;
		this.did = did;
	}


	public Schedule(String sdate, String stime, String etime, String venue, String appno, String did) {
		super();
		this.sdate = sdate;
		this.stime = stime;
		this.etime = etime;
		this.venue = venue;
		this.appno = appno;
		this.did = did;
	}


	public int getSid() {
		return sid;
	}


	public void setSid(int sid) {
		this.sid = sid;
	}


	public String getSdate() {
		return sdate;
	}


	public void setSdate(String sdate) {
		this.sdate = sdate;
	}


	public String getStime() {
		return stime;
	}


	public void setStime(String stime) {
		this.stime = stime;
	}


	public String getEtime() {
		return etime;
	}


	public void setEtime(String etime) {
		this.etime = etime;
	}


	public String getVenue() {
		return venue;
	}


	public void setVenue(String venue) {
		this.venue = venue;
	}


	public String getAppno() {
		return appno;
	}


	public void setAppno(String appno) {
		this.appno = appno;
	}


	public String getDid() {
		return did;
	}


	public void setDid(String did) {
		this.did = did;
	}
	
	
	
	
}	
	
	