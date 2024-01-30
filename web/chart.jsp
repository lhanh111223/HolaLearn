<!DOCTYPE html>
<html lang="en"> 
    <head>
        <title>Chart</title>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
        <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
        <link rel="shortcut icon" href="favicon.ico"> 

        <!-- FontAwesome JS-->
        <script defer src="assets/plugins/fontawesome/js/all.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <!-- App CSS -->  
        <link id="theme-style" rel="stylesheet" href="assets/css/portal.css">
        <style>
            .zoomout{
                display: block;
                height: 400px;
                width: 100%;
            }
        </style>
    </head> 

    <body class="app">   	
        <header class="app-header fixed-top">	   	            
            <div class="app-header-inner">  
                <div class="container-fluid py-2">
                    <div class="app-header-content"> 
                        <div class="row justify-content-between align-items-center">

                            <div class="col-auto">

                            </div><!--//col-->
                            <div class="search-mobile-trigger d-sm-none col">
                                <i class="search-mobile-trigger-icon fa-solid fa-magnifying-glass"></i>
                            </div><!--//col-->
                            <div class="app-search-box col">

                            </div><!--//app-search-box-->

                            <div class="app-utilities col-auto">
                                <div class="app-utility-item app-notifications-dropdown dropdown">    


                                    <div class="dropdown-menu p-0" aria-labelledby="notifications-dropdown-toggle">
                                        <div class="dropdown-menu-header p-3">
                                            <h5 class="dropdown-menu-title mb-0">Notifications</h5>
                                        </div><!--//dropdown-menu-title-->
                                        <div class="dropdown-menu-content">
                                            <div class="item p-3">
                                                <div class="row gx-2 justify-content-between align-items-center">
                                                    <div class="col-auto">
                                                        <img class="profile-image" src="assets/images/profiles/profile-1.png" alt="">
                                                    </div><!--//col-->
                                                    <div class="col">
                                                        <div class="info"> 

                                                        </div>
                                                    </div><!--//col--> 
                                                </div><!--//row-->
                                                <a class="link-mask" href="notifications.html"></a>
                                            </div><!--//item-->
                                            <div class="item p-3">
                                                <div class="row gx-2 justify-content-between align-items-center">
                                                    <div class="col-auto">
                                                        <div class="app-icon-holder">
                                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-receipt" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd" d="M1.92.506a.5.5 0 0 1 .434.14L3 1.293l.646-.647a.5.5 0 0 1 .708 0L5 1.293l.646-.647a.5.5 0 0 1 .708 0L7 1.293l.646-.647a.5.5 0 0 1 .708 0L9 1.293l.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .801.13l.5 1A.5.5 0 0 1 15 2v12a.5.5 0 0 1-.053.224l-.5 1a.5.5 0 0 1-.8.13L13 14.707l-.646.647a.5.5 0 0 1-.708 0L11 14.707l-.646.647a.5.5 0 0 1-.708 0L9 14.707l-.646.647a.5.5 0 0 1-.708 0L7 14.707l-.646.647a.5.5 0 0 1-.708 0L5 14.707l-.646.647a.5.5 0 0 1-.708 0L3 14.707l-.646.647a.5.5 0 0 1-.801-.13l-.5-1A.5.5 0 0 1 1 14V2a.5.5 0 0 1 .053-.224l.5-1a.5.5 0 0 1 .367-.27zm.217 1.338L2 2.118v11.764l.137.274.51-.51a.5.5 0 0 1 .707 0l.646.647.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.646.646.646-.646a.5.5 0 0 1 .708 0l.509.509.137-.274V2.118l-.137-.274-.51.51a.5.5 0 0 1-.707 0L12 1.707l-.646.647a.5.5 0 0 1-.708 0L10 1.707l-.646.647a.5.5 0 0 1-.708 0L8 1.707l-.646.647a.5.5 0 0 1-.708 0L6 1.707l-.646.647a.5.5 0 0 1-.708 0L4 1.707l-.646.647a.5.5 0 0 1-.708 0l-.509-.51z"/>
                                                            <path fill-rule="evenodd" d="M3 4.5a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 1 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm8-6a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5z"/>
                                                            </svg>
                                                        </div>
                                                    </div><!--//col-->
                                                    <div class="col">
                                                        <div class="info"> 
                                                            <div class="desc">You have a new invoice. Proin venenatis interdum est.</div>
                                                            <div class="meta"> 1 day ago</div>
                                                        </div>
                                                    </div><!--//col-->
                                                </div><!--//row-->
                                                <a class="link-mask" href="notifications.html"></a>
                                            </div><!--//item-->
                                            <div class="item p-3">
                                                <div class="row gx-2 justify-content-between align-items-center">
                                                    <div class="col-auto">
                                                        <div class="app-icon-holder icon-holder-mono">
                                                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bar-chart-line" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd" d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z"/>
                                                            </svg>
                                                        </div>
                                                    </div><!--//col-->
                                                    <div class="col">
                                                        <div class="info"> 

                                                        </div>
                                                    </div><!--//col-->
                                                </div><!--//row-->
                                                <a class="link-mask" href="notifications.html"></a>
                                            </div><!--//item-->
                                            <div class="item p-3">
                                                <div class="row gx-2 justify-content-between align-items-center">
                                                    <div class="col-auto">
                                                        <img class="profile-image" src="assets/images/profiles/profile-2.png" alt="">
                                                    </div><!--//col-->
                                                    <div class="col">
                                                        <div class="info"> 
                                                            <div class="desc">James sent you a new message.</div>
                                                            <div class="meta"> 7 days ago</div>
                                                        </div>
                                                    </div><!--//col--> 
                                                </div><!--//row-->
                                                <a class="link-mask" href="notifications.html"></a>
                                            </div><!--//item-->
                                        </div><!--//dropdown-menu-content-->

                                        <div class="dropdown-menu-footer p-2 text-center">
                                            <a href="notifications.html">View all</a>
                                        </div>

                                    </div><!--//dropdown-menu-->					        
                                </div><!--//app-utility-item-->
                                <div class="app-utility-item">
                                    <a href="settings.html" title="Settings">

                                    </a>
                                </div><!--//app-utility-item-->

                                <div class="app-utility-item app-user-dropdown dropdown">
                                    <a class="dropdown-toggle" id="user-dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gear icon" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8.837 1.626c-.246-.835-1.428-.835-1.674 0l-.094.319A1.873 1.873 0 0 1 4.377 3.06l-.292-.16c-.764-.415-1.6.42-1.184 1.185l.159.292a1.873 1.873 0 0 1-1.115 2.692l-.319.094c-.835.246-.835 1.428 0 1.674l.319.094a1.873 1.873 0 0 1 1.115 2.693l-.16.291c-.415.764.42 1.6 1.185 1.184l.292-.159a1.873 1.873 0 0 1 2.692 1.116l.094.318c.246.835 1.428.835 1.674 0l.094-.319a1.873 1.873 0 0 1 2.693-1.115l.291.16c.764.415 1.6-.42 1.184-1.185l-.159-.291a1.873 1.873 0 0 1 1.116-2.693l.318-.094c.835-.246.835-1.428 0-1.674l-.319-.094a1.873 1.873 0 0 1-1.115-2.692l.16-.292c.415-.764-.42-1.6-1.185-1.184l-.291.159A1.873 1.873 0 0 1 8.93 1.945l-.094-.319zm-2.633-.283c.527-1.79 3.065-1.79 3.592 0l.094.319a.873.873 0 0 0 1.255.52l.292-.16c1.64-.892 3.434.901 2.54 2.541l-.159.292a.873.873 0 0 0 .52 1.255l.319.094c1.79.527 1.79 3.065 0 3.592l-.319.094a.873.873 0 0 0-.52 1.255l.16.292c.893 1.64-.902 3.434-2.541 2.54l-.292-.159a.873.873 0 0 0-1.255.52l-.094.319c-.527 1.79-3.065 1.79-3.592 0l-.094-.319a.873.873 0 0 0-1.255-.52l-.292.16c-1.64.893-3.433-.902-2.54-2.541l.159-.292a.873.873 0 0 0-.52-1.255l-.319-.094c-1.79-.527-1.79-3.065 0-3.592l.319-.094a.873.873 0 0 0 .52-1.255l-.16-.292c-.892-1.64.902-3.433 2.541-2.54l.292.159a.873.873 0 0 0 1.255-.52l.094-.319z"/>
  <path fill-rule="evenodd" d="M8 5.754a2.246 2.246 0 1 0 0 4.492 2.246 2.246 0 0 0 0-4.492zM4.754 8a3.246 3.246 0 1 1 6.492 0 3.246 3.246 0 0 1-6.492 0z"/></a>
                                    <ul class="dropdown-menu" aria-labelledby="user-dropdown-toggle">
                                        <li><a class="dropdown-item" href="profile">Account</a></li>

                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="logout">Log Out</a></li>
                                    </ul>
                                </div><!--//app-user-dropdown-->  
                            </div><!--//app-utilities-->
                        </div><!--//row-->
                    </div><!--//app-header-content-->
                </div><!--//container-fluid-->
            </div><!--//app-header-inner-->
            <div id="app-sidepanel" class="app-sidepanel"> 
                <div id="sidepanel-drop" class="sidepanel-drop"></div>
                <div class="sidepanel-inner d-flex flex-column">
                    <a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
                    <div class="app-branding">
                        <a class="app-logo" href="home"><img class="logo-icon me-2" src="assets/images/app-logo.svg" alt="logo"><span class="logo-text">CHART</span></a>

                    </div>  

                    <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
                        <ul class="app-menu list-unstyled accordion" id="menu-accordion">
                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link" href="home">
                                    <span class="nav-icon">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z"/>
                                        <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Home</span>
                                </a><!--//nav-link-->
                            </li><!--//nav-item-->

                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->

                            </li><!--//nav-item-->



                            <li class="nav-item">
                                <!--//Bootstrap Icons: https://icons.getbootstrap.com/ -->
                                <a class="nav-link active" href="charts.html">
                                    <span class="nav-icon">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-bar-chart-line" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z"/>
                                        </svg>
                                    </span>
                                    <span class="nav-link-text">Charts</span>
                                </a><!--//nav-link-->
                            </li><!--//nav-item-->

                        </ul><!--//app-menu-->
                    </nav><!--//app-nav-->

                </div><!--//sidepanel-inner-->
            </div><!--//app-sidepanel-->
        </header><!--//app-header-->

        <div class="app-wrapper">

            <div class="app-content pt-3 p-md-3 p-lg-4">
                <div class="container-xl">

                    <h1 class="app-page-title">Charts</h1>
                    <div class="app-card shadow-sm mb-4 border-left-decoration">
                        <div class="inner">
                            <div class="app-card-body p-4">

                                <div style="text-align: center;">

                                    <form id="dateForm">
                                        <input type="date" id="startDate" name="dateBegin" oninput="searchByDate()">
                                        to
                                        <input type="date" id="endDate" name="dateEnd" oninput="searchByDate()">

                                    </form>                                  
                                </div>



                            </div>

                        </div><!--//inner-->
                    </div><!--//app-card-->
                    <div class="row g-4 mb-4">

                        <div class="app-card app-card-chart h-100 shadow-sm">
                            <div class="app-card-header p-3 border-0">
                                <h4 class="app-card-title"> Total Income Statistics Table </h4>
                            </div><!--//app-card-header-->
                            <div class="app-card-body p-4">					   
                                <div class="chart-container">

                                    <canvas id="myChart4" ></canvas>
                                </div>
                            </div><!--//app-card-body-->
                        </div><!--//app-card-->


                        <footer class="app-footer">
                            <div class="container text-center py-3">
                                <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
                                <small class="copyright">Designed with <span class="sr-only">love</span><i class="fas fa-heart" style="color: #fb866a;"></i> <a class="app-link" href="http://themes.3rdwavemedia.com" target="_blank"></a> for developers</small>

                            </div>
                        </footer><!--//app-footer-->

                    </div><!--//app-wrapper-->    					


                    <!-- Javascript -->          
                    <script src="assets/plugins/popper.min.js"></script>
                    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>  



                    <!-- Charts JS -->
                    <script src="assets/plugins/chart.js/chart.min.js"></script> 
                    <script src="assets/js/charts-demo.js"></script> 

                    <!-- Page Specific JS -->
                    <script src="assets/js/app.js"></script> 
                    <script>
                        document.addEventListener('DOMContentLoaded', function () {
                            const ctx4 = document.getElementById('myChart4');
                            let myChart = null;
                            let orders = JSON.parse('${ordersJson}');
                            renderChart(orders);

                            function renderChart(data) {
                                const xValues = data.map(order => order.orderDate);
                                const yValues = data.map(order => order.total_money);

                                // S? d?ng clear() ?? x?a d? li?u hi?n t?i m? kh?ng x?a ki?u d?ng
                                if (myChart) {
                                    myChart.data.labels = xValues;
                                    myChart.data.datasets[0].data = yValues;
                                    myChart.update();
                                } else {
                                    myChart = new Chart(ctx4, {
                                        type: 'line',
                                        data: {
                                            labels: xValues,
                                            datasets: [{
                                                    label: 'Total Money',
                                                    data: yValues,
                                                    backgroundColor: '#34ebab',
                                                    borderWidth: 15
                                                }]
                                        },
                                        options: {
                                            scales: {
                                                y: {
                                                    beginAtZero: true
                                                }
                                            }
                                        }
                                    });

                                    // Th?m c?c thu?c t?nh ki?u d?ng v?o th? canvas
                                    document.getElementById('myChart4').style.display = 'block';
                                    document.getElementById('myChart4').style.height = '400px';
                                    document.getElementById('myChart4').style.width = '100%';
                                }
                            }

                            window.searchByDate = function () {
                                const startDateInput = document.getElementById('startDate');
                                const endDateInput = document.getElementById('endDate');

                                const startDate = startDateInput.value + 'T00:00:00';
                                const today = new Date();
                                const endDate = endDateInput.value + 'T23:59:59';


                                endDateInput.max = today.toISOString().split('T')[0];

                                const startDateAdjusted = new Date(startDate);
                                startDateAdjusted.setMinutes(startDateAdjusted.getMinutes() - startDateAdjusted.getTimezoneOffset());

                                const endDateAdjusted = new Date(endDate);
                                endDateAdjusted.setMinutes(endDateAdjusted.getMinutes() - endDateAdjusted.getTimezoneOffset());

                                const filteredOrders = orders.filter(order => {
                                    const orderDate = new Date(order.orderDate);
                                    return orderDate >= startDateAdjusted && orderDate <= endDateAdjusted;
                                });

                                renderChart(filteredOrders);
                            };


                        });


                    </script>

                    </body>
                    </html> 

