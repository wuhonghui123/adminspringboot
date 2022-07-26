package cn.edu.guet.weappdemo.security;
import org.springframework.security.core.GrantedAuthority;

/**
 * 权限封装
 * @Author Liwei
 * @Date 2021-08-13 17:52
 */
public class GrantedAuthorityImpl implements GrantedAuthority {
	
	private static final long serialVersionUID = 1L;

	private String authority;

    public GrantedAuthorityImpl(String authority) {
        this.authority = authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }
}