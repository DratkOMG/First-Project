package ru.itis.datbookshop.controllers.home.mainpage;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import ru.itis.datbookshop.models.Book;
import ru.itis.datbookshop.services.product.BooksService;
import ru.itis.datbookshop.services.product.CategoriesService;
import ru.itis.datbookshop.show.LeftShow;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookOfSellerController", value = "/book_of_seller_controller")
public class BookOfSellerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long sId = Long.parseLong(request.getParameter("sid"));
        BooksService booksService = (BooksService) getServletContext().getAttribute("book_service");
        CategoriesService categoriesService = (CategoriesService) getServletContext().getAttribute("categories_service");
        LeftShow leftShow = (LeftShow) getServletContext().getAttribute("left_show");
        leftShow.show(request, categoriesService, booksService);
        List<Book> bookList = booksService.findAllBookBySellerId(sId);
        request.setAttribute("listBooks", bookList);

        Cookie[] cookies = request.getCookies();

        int countProduct = 0;
        for (Cookie cookie: cookies) {
            if (cookie.getName().startsWith("BookAdded")) {
                countProduct++;
            }
        }

        request.setAttribute("countProduct", countProduct);

        request.setAttribute("hidden", "hidden=''");
        getServletContext().getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
