package mul.camp.a.dto;

import java.io.Serializable;

public class ChatDto implements Serializable {
	
	private int seq;
	private int ref;
	private String aka;
	private String chat;
	private String wdate;
	
	
	@Override
	public String toString() {
		return "ChatDto [seq=" + seq + ", ref=" + ref + ", aka=" + aka + ", chat=" + chat + ", wdate=" + wdate + "]";
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public int getRef() {
		return ref;
	}


	public void setRef(int ref) {
		this.ref = ref;
	}


	public String getAka() {
		return aka;
	}


	public void setAka(String aka) {
		this.aka = aka;
	}


	public String getChat() {
		return chat;
	}


	public void setChat(String chat) {
		this.chat = chat;
	}


	public String getWdate() {
		return wdate;
	}


	public void setWdate(String wdate) {
		this.wdate = wdate;
	}


	public ChatDto(int seq, int ref, String aka, String chat, String wdate) {
		super();
		this.seq = seq;
		this.ref = ref;
		this.aka = aka;
		this.chat = chat;
		this.wdate = wdate;
	}


	public ChatDto() {}
}
