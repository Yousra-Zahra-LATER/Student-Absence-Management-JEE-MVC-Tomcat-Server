<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
              <%@ page import="java.text.SimpleDateFormat" %>
       <%@page import= "java.time.*"%>
      <%@page import ="java.time.format.DateTimeFormatter"%>
       <%@page import ="java.util.Locale"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="fr">
<head>

<style>



input[type="text"] {
  width: 100%;
  border: 2px solid #aaa;
  border-radius: 4px;
  margin: 8px 0;
  outline: none;
  padding: 8px;
  box-sizing: border-box;
  transition: 0.3s;
}

input[type="text"]:focus {
  border-color: green;
  box-shadow: 0 0 8px 0 green;
}

.inputWithIcon input[type="text"] {
  padding-left: 40px;
}

.inputWithIcon {
  position: relative;
}

.inputWithIcon i {
  position: absolute;
  left: 0;
  top: 8px;
  padding: 9px 8px;
  color: #aaa;
  transition: 0.3s;
}

.inputWithIcon input[type="text"]:focus + i {
  color: green;
}

.inputWithIcon.inputIconBg i {
  background-color: #aaa;
  color: #fff;
  padding: 14px 10px;
  border-radius: 4px 0 0 4px;
}

.inputWithIcon.inputIconBg input[type="text"]:focus + i {
  color: #fff;
  background-color: green;
}

</style>
  <meta charset="UTF-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Mon Profil
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" /> 

</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="orange" data-background-color="black" data-image="../assets/img/log.jpg">
 <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>   
        <div class="logo"><a class="simple-text logo-normal">
         <img src="../assets/img/logo2 (2).png" style="position:absolute;
         top:6px;
         left:14px;  
         width: 65px;
        height: 65px; ">
          Bienvenue</br>
         ${sessionScope.n}
          <%
                  
              		int opp=(Integer)session.getAttribute("i");
    		       
  			
    		%>
        </a></div>
  <div class="sidebar-wrapper">
        <ul class="nav ">
          <li class="nav-item  ">
            <a class="nav-link" href="./homeETU.jsp">
               <i class=""><img src="../assets/ima/emploi.png" style=" width: 24px;height: 24px;"></i>
              <p>Mon emploi du temps</p>
            </a>
          </li>
        
            <li class="nav-item ">
            <a class="nav-link" href="http://localhost:8080/gestion/ConsulterListeAbs?opp=<%=opp%>">            
             <i class=""><img src="../assets/ima/abs.png" style=" width: 24px;height: 24px;"></i>
              <p>Mon relevé des absences </p>
            </a>
          </li>
          
          <li class="nav-item ">
            <a class="nav-link" href="http://localhost:8080/gestion/ConsulterListeExclus?opp=<%=opp%>">
              <i class=""><img src="../assets/ima/exclu.png" style=" width: 24px;height: 24px;"></i>
              <p>La liste des exclus</p>
            </a>
          </li>
          
      
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
         <div class="navbar-wrapper">
          
          <% 	   LocalDateTime localDateTime= new java.util.Date().toInstant()
                  .atZone(ZoneId.systemDefault())
                  .toLocalDateTime();
LocalDate localDate=localDateTime.toLocalDate();
          
         
            
            //Day of week and month in French
            String dateInFrench=localDate.format(DateTimeFormatter.ofPattern("EEEE, dd MMMM, yyyy",Locale.FRENCH));
            
            String dayInFRench=localDate.format(DateTimeFormatter.ofPattern("EEEE",Locale.FRENCH));
            
            %>
            <a class="navbar-brand" ><%= dateInFrench %> </a></br>
          </div>
      
               <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="./homeETU.jsp">
                 <i class=""><img src="../assets/ima/home.png" style=" width: 24px;height: 24px;"></i>
                 
                </a>
              </li>
           
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class=""><img src="../assets/ima/user.png" style=" width: 24px;height: 24px;"></i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                    <a class="dropdown-item" href="http://localhost:8080/gestion/SProfileETU?opp=<%=opp%>">Mon profil</a>
                
                  <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="http://localhost:8080/gestion/Logout">Déconnecter</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Mon Profil</h4>
                  <p class="card-category">Mes informations</p>
                </div>
                <div class="card-body">
                  <form  action="http://localhost:8080/gestion/ModifMonC" method="POST">
                    <c:forEach var="list" items="${sessionScope.liste}">
                <div class="row">
                      <div class="col-md-0">
                          <input type="hidden" name="id"class="form-control" value= "${list.getIdetudiant()}">
                        </div>
                     
                      <div class="col-md-4">
                        <div class="form-group">
                         <label for="nom"style="color:black;">Nom</label>
                 
<div class="inputWithIcon inputIconBg">
  <input type="text" name="nom" id="nom" value="${list.getNom()}"readonly/>
  <i class="fa fa-user" ></i>
</div>
                          
                        </div>
                      </div>
                        <div class="col-md-4">
                        <div class="form-group">
                         <label for="nom"style="color:black;">prenom</label>
                 
<div class="inputWithIcon inputIconBg">
  <input type="text" name="prenom"  value="${list.getPrenom()}"readonly/>
  <i class="fa fa-user" ></i>
</div>
                          
                        </div>
                      </div>

                <div class="col-md-4" >
                        <div class="form-group" >
   <label style="color:black;">Date de naissance</label>
 <div class="inputWithIcon inputIconBg">
                          
                   <input type="text" oninput="result.value=send.value" name="dateN"  value="${list.getDate_de_naissance()}"readonly/>
               <i class="fa fa-calendar"></i>
                   </div>
                   </div>
         
                
                    </div>
                        
                   </div>
                   <div class="row">
                         
                                   <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:black;">Sexe</label>
                           <div class="inputWithIcon inputIconBg">
                           
 
                         
    <input type="text" name="sexe"value="${list.getSexe()}"readonly>
                          <i class="fa fa-universal-access" ></i>
  </div>
</div>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:black;">User</label>
                          <div class="inputWithIcon inputIconBg">
                          <input type="text" name="user"value="${list.getUser()}">
                          <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                      </div>
                      </div>
                      </div>
                      
                   <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:black;">Année de bac</label>
                          <div class="inputWithIcon inputIconBg">
                          <input type="text" name="annee"value="${list.getAnneeBac()}"readonly>
                          <i class="fa fa-calendar" ></i>
                        </div>
                      </div>
                      </div>
                       <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:black;">Numéro de bac</label>
                          <div class="inputWithIcon inputIconBg">
                          <input type="text" name="numbac"value="${list.getNumBac()}"readonly>
                          <i class="fa fa-list-ol" ></i>
                        </div>
                    </div>
                    </div>
                    </div>
                          
                         
                         <div class="row">
                   <div class="col-md-6">
                        <div class="form-group">
                          <label for="ad" style="color:black;">Adresse</label>
                          <div class="inputWithIcon inputIconBg">
  <input type="text"name="ad" value="${list.getAdresse()}"/>
  <i class="fa fa-map-marker" ></i>
</div>
                          
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="tele" style="color:black;">Téléphone</label>
                          <div class="inputWithIcon inputIconBg">
  <input type="text" name="tele" value="${list.getTéléphone()}"/>
  <i class="fa fa-phone" ></i>
</div>
                         
                        </div>
                      </div>
                     </div>
                    
                     
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:black;">Mot de passe</label>
                          <div class="inputWithIcon inputIconBg">
                          <input type="text" name="mdp"value="${list.getMotdepasse()}">
                          <i class="fa fa-key" ></i>
                        </div>
                      </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label style="color:black;">Email</label>
                          <div class="inputWithIcon inputIconBg">
                          <input type="text" name="email" value="${list.getEmail()}">
                          <i class="fa fa-envelope" ></i>
                        </div>
                      </div>
                    </div>
                    
                      </div>   
                     
                      <div class="row">
                        
                      <div class="col-md-6">
                        <div class="form-group">
                      
                          <label for="spc"style="color:black;">spécialité:</label>
  <div class="inputWithIcon inputIconBg">
                          <input type="text" name="form" value="${list.getForm()}"readonly>
                          <i class="fa fa-graduation-cap" ></i>
                        </div>
  </div>
                      </div>
                     </div>
  
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label style="color:black;">Description</label>
                           <div class="inputWithIcon inputIconBg">
                          <input type="text" name="des" value="${list.getDescription()}"readonly/>
                        <i class="fa fa-sticky-note" ></i>
</div>
                      </div>
                    
                    </div>  
                        
                            </div>                      
  
  
                         
                     </c:forEach>
                    <button type="submit" class="btn btn-primary pull-right">Modifier</button>
                   
                  </form>
                </div>
              </div>
            </div>
             <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                 
                    <img class="img" src="../assets/img/logo.png" />
                  </a>
                </div>
                <div class="card-body">
                 <img class="img" src="../assets/img/e.jpg"style="width:290px;height:500px;margin-left: .5%;" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
 <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.univ-constantine2.dz/presentation-de-luniversite/">
                  Blog
                </a>
              </li>
           </ul>
          </nav>
          <div class="copyright float-right">
           Copyright &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>,
            <a > Faculté des Nouvelles Technologies de l'Information et de la Communication NTIC. <br>
            Adresse :Université Constantine 2 - Abdelhamid Mehri
Ali Mendjeli - BP : 67A, Constantine - Algérie.
        </div>
      </footer>
    </div>
  </div>
  
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="../assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="../assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="../assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="../assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="../assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
 
  function nb()  
  {  
      var checkboxe = document.getElementsByName("form");  
      var numberOfCheckedItems = 0;  
      for(var i = 0; i < checkboxe.length; i++)  
      {  
          if(checkboxe[i].checked)  
              numberOfCheckedItems++;  
      }  
      if(numberOfCheckedItems > 1)  
      {  
          alert("You can't select more than one");  
          return false;  
      }  
  }

  function se()  
  {  
      var checkboxe = document.getElementsByName("sexe");  
      var numberOfCheckedItems = 0;  
      for(var i = 0; i < checkboxe.length; i++)  
      {  
          if(checkboxe[i].checked)  
              numberOfCheckedItems++;  
      }  
      if(numberOfCheckedItems > 1)  
      {  
          alert("You can't select more than one");  
          return false;  
      }  
  }  


    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
    
  
  </script>
</body>

</html>