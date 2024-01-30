
package controller.auth;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import model.Account;

/**
 *
 * @author admin
 */
@WebServlet(name = "DownloadLearningPDFController", urlPatterns = {"/downloadlearningpdf"})
public class DownloadLearningPDFController extends BaseRequiredAuthorizationController {

    @Override
    protected void doAuthGet(HttpServletRequest request, HttpServletResponse response, Account acc) throws ServletException, IOException {
        String filename = request.getParameter("filename");
        String filePath = "D:/FPTU/Sem5/SWP391/uploadDocument/" + filename;
        File file = new File(filePath);
        FileInputStream fis = new FileInputStream(file);

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=" + file.getName());
        System.out.println(file.getName());
        OutputStream os = response.getOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead;
        while ((bytesRead = fis.read(buffer)) != -1) {
            os.write(buffer, 0, bytesRead);
        }
        os.close();
        fis.close();
    }

    @Override
    protected void doAuthPost(HttpServletRequest request, HttpServletResponse response, Account acc) throws ServletException, IOException {
    }

}
