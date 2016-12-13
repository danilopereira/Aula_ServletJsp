package br.com.fiap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.dao.GenericDao;
import br.com.fiap.entity.Usuario;

@WebServlet("/admin/cadUsuarios")
public class ServletCadUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletCadUsuarios() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("mensagem", "Chamada realizada pelo servlet");
		//Transferindo request com novo atributo para a pggina cadUsuarios.jsp
		request.getRequestDispatcher("cadUsuarios.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String nome = request.getParameter("nome");
			String senha = request.getParameter("senha");
			String nivel = request.getParameter("nivel");
			
			GenericDao<Usuario> usuarioDao = new GenericDao<>(Usuario.class);
			
			Usuario usuario = new Usuario();
			usuario.setNome(nome);
			usuario.setSenha(senha);
			usuario.setNivel(Integer.parseInt(nivel));
			
			usuarioDao.adicionar(usuario);
			
			request.setAttribute("mensagem", "Usuário " +usuario.getId()+ " incluído com sucesso!");
			//Transferindo request com novo atributo para a pggina cadUsuarios.jsp
			request.getRequestDispatcher("cadUsuarios.jsp").forward(request, response);;
		} catch (Exception e) {
			request.setAttribute("mensagem", e.getMessage());
			//Transferindo request com novo atributo para a pggina cadUsuarios.jsp
			request.getRequestDispatcher("cadUsuarios.jsp").forward(request, response);;
		}
	}

}
