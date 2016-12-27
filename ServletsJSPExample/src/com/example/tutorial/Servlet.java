package com.example.tutorial;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by marekrybakiewicz on 12/27/16.
 */
@SuppressWarnings("DefaultFileTemplate")
@WebServlet(name = "servlet", urlPatterns = {"/servlet", "/test", "/theBest"})

public class Servlet extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //Select which jsp page to show, then forward request and responses that the client gave
        if (req.getParameter("firstname") == null || req.getParameter("lastname") == null) {
            //Originally no request parameters, so we serve the default jsp page
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            //After the user submits a request with non-null first and last names, we serve a different page

            //First obtain the user input from the request
            String firstName = req.getParameter("firstname");
            String lastName = req.getParameter("lastname");

            //Set the attribute in the request call to output.jsp to what the user input in the original request
            req.setAttribute("firstname", firstName);
            req.setAttribute("lastname", lastName);

            //Serve up the other jsp page, with the request properly modified
            getServletContext().getRequestDispatcher("/output.jsp").forward(req, resp);
        }
    }
}
