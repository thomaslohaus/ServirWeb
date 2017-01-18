package br.com.semperparata.servirweb.security;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.semperparata.servirweb.controller.LoginController;

@Intercepts
public class AutorizacaoInterceptor {
	
	private UsuarioLogado usuarioLogado;
	private Result result;
	private ControllerMethod method;
	private HttpServletRequest request;

	public AutorizacaoInterceptor() {}
	
	@Inject
	public AutorizacaoInterceptor(UsuarioLogado usuarioLogado, Result result, ControllerMethod method, HttpServletRequest request) {
		this.usuarioLogado = usuarioLogado;
		this.result = result;
		this.method = method;
		this.request = request;
	}
	
	@Accepts
	public boolean accept() {
		return !method.containsAnnotation(NoAuth.class);
	}
	
	@AroundCall
	public void intercepts(SimpleInterceptorStack stack) {
		if (usuarioLogado.isLogado()) {
			stack.next();
		} else {
			String uri = request.getRequestURI();
			usuarioLogado.setUrl(uri);
			result.redirectTo(LoginController.class).form();
		}
	}
}
