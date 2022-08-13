package cn.edu.guet.weappdemo.bean;

/**
 * @Author Liwei
 * @Date 2021-08-13 17:37
 */
public class SysLog extends BaseModel {

	@Override
	public String toString() {
		return "SysLog{" +
				", operation='" + operation + '\'' +
				", method='" + method + '\'' +
				", params='" + params + '\'' +
				", time=" + time +
				", ip='" + ip + '\'' +
				'}';
	}




	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public Long getTime() {
		return time;
	}

	public void setTime(Long time) {
		this.time = time;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	private String user_name;
	private String operation;

    private String method;

    private String params;

    private Long time;

    private String ip;



}
