package br.ufscar.dc.dsw.servlet;

import br.ufscar.dc.dsw.bean.DynamicSelectBean;
import br.ufscar.dc.dsw.pojo.Cidade;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/buscaPorEstado"})
public class EstadoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String sigla = request.getParameter("estado");
        String buffer = "<tr><td>Cidade</td><td><select id='cidade' name='cidade' onchange='apresentaDS()'>";
        List<Cidade> cidades = new DynamicSelectBean().getCidadesPorEstado(sigla);
        for (Cidade cidade : cidades) {
            buffer = buffer + "<option value='" + cidade.getNome() + "'>" + cidade.getNome() + "</option>";
        }
        buffer = buffer + "</select></td>";
        response.getWriter().println(buffer);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
