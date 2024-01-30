<%-- 
    Document   : bootstrap
    Created on : Oct 27, 2023, 11:13:01 PM
    Author     : lam12
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Courses | Education</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="template learningenvironment/style.css" />
        <link href="template subject_detail/css/style.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
         <!-- Popper.js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            .nav-item {
                background-color: gray;
                border: 2px solid;
                margin: 5px;
            }
            .nav-link {
                color: #fff;
            }
            .tab-pane {
                background-color: #f7f7f7;
                border: 2px solid #e0e0e0;
                padding: 20px;
            }
            body{
                background-color: gainsboro;
            }
            .nav-link.active{
                border: 2px solid #FF3520;
                color: #FF3520;
            }
            .question-taken {
                background-color: #FFE133;
                color: #000000;
            }
        </style> 
    </head>
    <body>
        <jsp:include page="header3.jsp"></jsp:include> 
            <div class="container-fluid my-5">
            <jsp:include page="sidebarlearning.jsp"></jsp:include>
            <jsp:useBean id="qr" class="dto.ChapterDAO" scope="request"></jsp:useBean>
            <c:set var="quiz_id" value="${requestScope.quiz_id}" />
            <c:set var="learner_id" value="${sessionScope.account.account_id}" />
            <c:set var="result" value="${qr.getQuizResult(quiz_id, learner_id)}"/>
            <div class="content">
                <c:if test="${result.status == 0}">
                    <div class="row">
                        <div class="col-md-8">
                            <form action="quiz-result" method="get" id="quizForm">
                                <div class="tab-content" id="nav-tabContent">
                                    <input type="hidden" value="${requestScope.subject_id}" name="subject_id">
                                    <input type="hidden" value="${requestScope.course_id}" name="course_id">
                                    <input type="hidden" value="${requestScope.chapter_id}" name="chapter_id">
                                    <input type="hidden" value="${requestScope.quiz_id}" name="quiz_id">
                                    <input type="hidden" value="${requestScope.category_id}" name="category_id">
                                    <c:forEach var="i" items="${requestScope.quiz}">


                                        <div class="tab-pane fade p-3" id="nav-${i.question_id}" role="tabpane1" aria-labelledly="nav-home-tab">
                                            <div>
                                                <h5>${i.content}</h5>
                                            </div>
                                            <br><br><hr>
                                            <div>
                                                <p>Select one: </p>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="${i.question_id}" value="1">
                                                    <label class="form-check-label">
                                                        ${i.option1}
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="${i.question_id}" value="2">
                                                    <label class="form-check-label">
                                                        ${i.option2}
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="${i.question_id}" value="3">
                                                    <label class="form-check-label">
                                                        ${i.option3}
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="${i.question_id}" value="4">
                                                    <label class="form-check-label">
                                                        ${i.option4}
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4 right-column dynamic-height" style="border: 5px solid red">
                            <h4 class="nav-quiz-title">Quiz navigation</h4>
                            <div class="nav" id="nav-tab" role="tablist">
                                <c:forEach var="j" items="${requestScope.quiz}" varStatus="loop">
                                    <c:set var="variable" value="${loop.index + 1}" />
                                    <div class="nav-item">
                                        <button class="nav-link" id="nav-${j.question_id}-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-${j.question_id}" type="button" role="tab" aria-controls="nav-${j.question_id}"
                                                aria-selected="true">${variable}</button>
                                    </div>
                                </c:forEach>
                            </div>
                            <div style="margin-top: 3%" class="finish-quiz"><a id="submit-quiz" href="#" style="color: red; text-decoration: none">Finish attempt ...</a></div>
                            <!--<div style="margin-top: 3%" class="time-left">Time left <strong>0:02:30</strong></div>-->
                        </div>
                    </div>
                </c:if>
                <c:if test="${result.status == 1}">
                    <div class="row">
                        <table class="table table-hover table-dark">
                            <tbody>
                                <tr>
                                    <th>Marks</th>
                                    <th>Status</th>
                                </tr>
                                <tr>
                                    <th>${result.mark}</th>
                                    <th style="color: green">PASSED</th>
                                </tr>
                            </tbody>
                        </table>
                    </div> 
                </c:if>
            </div>
        </div>

        <script>
            $(document).ready(function () {

                $("input[type='radio']").on('change', function () {
                    var parentDiv = $(this).closest(".tab-pane");
                    if (parentDiv.length > 0) {
                        var parentId = parentDiv.attr("id");
                        var tabItems = $("#nav-tab").find(".nav-item");
                        tabItems.each(function () {
                            var button = $(this).find('button');
                            var dataTarget = button.data('bs-target');
                            if (dataTarget === '#' + parentId) {
                                button.addClass('question-taken');
                                return;
                            }
                        });
                    }
                });

                $("#submit-quiz").click(function (event) {
                    event.preventDefault();
                    $("#quizForm").submit();
                });

                // jQuery để tính toán chiều cao của cột bên phải
                function getItemsPerRow() {
                    var rightColumn = $(".dynamic-height");
                    var rowWidth = rightColumn.width(); // Lấy chiều rộng của dòng
                    var tabItems = rightColumn.find(".nav-item");

                    var itemsPerRow = 0;
                    var totalWidth = 0;

                    // Lặp qua từng phần tử và tính tổng chiều rộng
                    tabItems.each(function () {
                        var itemWidth = $(this).outerWidth(true);
                        totalWidth += itemWidth;

                        if (totalWidth <= rowWidth) {
                            itemsPerRow++;
                        } else {
                            return false; // Dừng vòng lặp khi vượt quá chiều rộng dòng
                        }
                    });

                    return itemsPerRow;
                }

                function setRightColumnHeight() {
                    var rightColumn = $(".dynamic-height");
                    var tabItems = rightColumn.find(".nav-item");
                    var numberItem = tabItems.length;
                    var itemPerRow = getItemsPerRow();
                    var rows;
                    if (numberItem % itemPerRow === 0) {
                        rows = numberItem / itemPerRow + 3;
                    } else {
                        rows = Math.floor(numberItem / itemPerRow) + 4;
                    }
                    var height = 0;
                    height = tabItems.eq(0).height() * rows + $('.nav-quiz-title').height()
                            + $('.time-left').height() + $('.finish-quiz').height();
                    rightColumn.height(height);
                }

                // Gọi hàm khi trang được tải và khi tab thay đổi (nếu có)
                setRightColumnHeight();
                $(window).resize(setRightColumnHeight);
            });
        </script>
        <script src="template learningenvironment/script.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>    
    </body>
</html>
