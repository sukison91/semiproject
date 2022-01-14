package mul.camp.a.dto;

import java.io.Serializable;

public class BbsDto implements Serializable {
	private int cat;
	private int seq;
	private String id;
	private int ref;
	private int step;
	private int depth;
	private String title;
	private String content;
	private String wdate;
	private int del;
	private int readcount;
	private String img;
	private int blike;
	
	public BbsDto() {}

	public BbsDto(int cat, int seq, String id, int ref, int step, int depth, String title, String content, String wdate,
			int del, int readcount, String img, int blike) {
		super();
		this.cat = cat;
		this.seq = seq;
		this.id = id;
		this.ref = ref;
		this.step = step;
		this.depth = depth;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.del = del;
		this.readcount = readcount;
		this.img = img;
		this.blike = blike;
	}

	public int getCat() {
		return cat;
	}

	public void setCat(int cat) {
		this.cat = cat;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getbLike() {
		return blike;
	}

	public void setbLike(int blike) {
		this.blike = blike;
	}

	@Override
	public String toString() {
		return "BbsDto [cat=" + cat + ", seq=" + seq + ", id=" + id + ", ref=" + ref + ", step=" + step + ", depth="
				+ depth + ", title=" + title + ", content=" + content + ", wdate=" + wdate + ", del=" + del
				+ ", readcount=" + readcount + ", img=" + img + ", like=" + blike + "]";
	}
	
	
}
