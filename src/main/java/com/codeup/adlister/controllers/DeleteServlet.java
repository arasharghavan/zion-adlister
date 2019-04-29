package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("ads", DaoFactory.getAdsDao().all());
        User user = (User) req.getSession().getAttribute("user");
        req.setAttribute("user",user);
        req.getRequestDispatcher("/WEB-INF/delete.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user =(User) req.getSession().getAttribute("user");

        Long deleteId = user.getId();
//        DaoFactory.getAdsDao().deleteAd(deleteId);
        resp.sendRedirect("/ads");
    }
}
