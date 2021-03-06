package onbiz.vo;

import java.util.Date;


// 작업 OnTask 
// Join되지않은 테이블
public class OnTask {
	int id;
	String text;
	String start_date;
	String end_date;
	int duration;
	int progress;
	int parent;
	String priority;
	String content;
	String task_regdte;
	String task_uptdte;
	String task_state;
	String mem_no;
	String task_no;
	String task_name;
	public OnTask() {
		super();
	}

	public OnTask(String mem_no) {
		super();
		this.mem_no = mem_no;
	}
	
	public OnTask(String text, String content, String mem_no) {
		super();
		this.text = text;
		this.content = content;
		this.mem_no = mem_no;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}

	public int getParent() {
		return parent;
	}

	public void setParent(int parent) {
		this.parent = parent;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTask_regdte() {
		return task_regdte;
	}

	public void setTask_regdte(String task_regdte) {
		this.task_regdte = task_regdte;
	}

	public String getTask_uptdte() {
		return task_uptdte;
	}

	public void setTask_uptdte(String task_uptdte) {
		this.task_uptdte = task_uptdte;
	}

	public String getTask_state() {
		return task_state;
	}

	public void setTask_state(String task_state) {
		this.task_state = task_state;
	}

	public String getMem_no() {
		return mem_no;
	}

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}

  /**
   * @return the task_no
   */
  public String getTask_no() {
    return task_no;
  }

  /**
   * @param task_no the task_no to set
   */
  public void setTask_no(String task_no) {
    this.task_no = task_no;
  }

  /**
   * @return the task_name
   */
  public String getTask_name() {
    return task_name;
  }

  /**
   * @param task_name the task_name to set
   */
  public void setTask_name(String task_name) {
    this.task_name = task_name;
  }
}
