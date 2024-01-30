
package controller.auth;

import dto.SliderDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import model.Account;

/**
 *
 * @author Admin
 */
@MultipartConfig
@WebServlet(name = "AddSliderController", urlPatterns = {"/slideradd"})
public class AddSliderController extends BaseRequiredAuthorizationController {

   
    @Override
    protected void doAuthGet(HttpServletRequest request, HttpServletResponse response, Account acc) throws ServletException, IOException {
        request.getRequestDispatcher("slideradd.jsp").forward(request, response);
    }

    @Override
    protected void doAuthPost(HttpServletRequest request, HttpServletResponse response, Account acc) throws ServletException, IOException {
        String mess = null;
        String imageName = null;
        String savePath = "D:/Sem5_Fall2023/SWP391/image/";
        File file = new File(savePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        SliderDAO dao = new SliderDAO();

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Part filePart = request.getPart("image");
        String link = request.getParameter("link");
        String endtime = request.getParameter("endtime");
        String status = request.getParameter("status");
        String marketer_id = request.getParameter("marketer_id");
        String type = request.getParameter("type");

        if (filePart.getSize() > 0) {
            imageName = filePart.getSubmittedFileName();
            file = new File(savePath + imageName);
            try ( InputStream fileContent = filePart.getInputStream();  FileOutputStream fos = new FileOutputStream(file)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                }
            }
        }

        boolean isSuccess = dao.addSlider(imageName, title, status, link, marketer_id, type, endtime, description);
        if (isSuccess) {
            mess = "Add successful";
            request.setAttribute("mess", mess);
            response.sendRedirect("slider_marketer");
        } else {
            request.getRequestDispatcher("slideradd").forward(request, response);
        }
    }

}
