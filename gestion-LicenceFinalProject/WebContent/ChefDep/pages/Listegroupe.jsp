 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@page import="modeleC.*"  %>
       <%@page import="java.sql.*" %>
        <%@page import="modele.*" %>
       <%@ page import="java.text.SimpleDateFormat" %>
       <%@page import= "java.time.*"%>
      <%@page import ="java.time.format.DateTimeFormatter"%>
       <%@page import ="java.util.Locale"%>
          <%@page import ="java.util.ArrayList"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Le relev� d'absence
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" /> 
  <link href="..assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" type="text/css"/>
  <link href="../assets/demo/demo.css" rel="stylesheet" type="text/css"/>
</head>
<body class="">
  <div class="wrapper">
   <div class="sidebar" data-color="green" data-background-color="black" data-image="../assets/img/log.jpg">
 <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>   
        <div class="logo"><a class="simple-text logo-normal">
         <img src="../assets/img/logo2 (2).png" style="position:absolute;
         top:6px;
         left:14px;  
         width: 65px;
          height: 65px; ">
          Bienvenue </br>
          ${sessionScope.n}
         <%
                
              		int idens=(Integer)session.getAttribute("i");
                    String prenom =(String)session.getAttribute("n");
                    int idchef=(Integer)session.getAttribute("idc");
                    int idUser = (Integer)session.getAttribute("id");
                    HomeCHEF hc=new HomeCHEF();
               	 ArrayList<Formation> lf=hc.selectFormation(idUser); 
                    
    		%>
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav ">
    
            
            <li class="nav-item ">
              <a class="nav-link" href="#navbar-components" role="button" data-toggle="collapse"aria-expanded="true" aria-controls="navbar-components">
                 <i class=""><img src="../assets/ima/groups.png" style=" width: 24px;height: 24px;"></i>
                <p >Consulter les �tudiants</p>
              </a>
               <%                          
         	Connection cn;
   Statement state;
    ResultSet result;
     String user="root";
   	String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
   	 String passwd="00000";
   	 String classforname="com.mysql.cj.jdbc.Driver";
   	Class.forName(classforname);
    cn =(Connection) DriverManager.getConnection(url,user,passwd);
    state = cn.createStatement();
    String q="SELECT abr�viation,idformation FROM chefded�partement c,formation f where c.idd�partement=f.idd�partement and idchef="+idchef;
    ResultSet R =  state.executeQuery(q);
 	 %>
              <div class="collapse " id="navbar-components">
                <ul class="nav nav-sm flex-column">
                  <% int co5=1000; while(R.next()){
                	  co5=co5+1;
       %>
                  <li class="nav-item">
                    <a href="#<%=co5%>" class="nav-link" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="<%=co5%>">
                       <i class=""><img src="../assets/ima/spec.png" style=" width: 24px;height: 24px;"></i>
                        
                      <span> <%=R.getString("abr�viation") %></span>
                    </a>
                    
                       <div class="collapse " id="<%=co5%>">
                <ul class="nav nav-sm flex-column">
                  <%   jibGroupe jb= new jibGroupe();
          ArrayList<groupe> l =jb.getGroup(R.getInt("idformation"));
          for(groupe g:l){ %>
                      <li class="nav-item ">
                      
                            
                         
                          <a href="http://localhost:8080/gestion/SConsEtu?idgrou=<%=g.getIdgroupe() %>" class="nav-link "><%=g.getNom() %></a>
                         
                        </li>
                        <%} %>   
                      </ul>
                      </div>
                  </li>
                   <%} %>
                </ul>
              </div>
            </li>
            
       
         
         
                   <li class="nav-item ">
             <a class="nav-link" href="#navbar-examples" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-examples">
                    <i class=""><img src="../assets/ima/rec.png" style=" width: 24px;height: 24px;"></i>
                <p >G�rer les r�clamations</p>
              </a>
                                        
         <%  String q1="SELECT abr�viation,idformation FROM chefded�partement c,formation f where c.idd�partement=f.idd�partement and idchef="+idchef;
    ResultSet R1 =  state.executeQuery(q1);
 	 %>
   	
              <div class="collapse "id="navbar-examples">
                <ul class="nav nav-sm flex-column">
                  <% int co7=7000; while(R1.next()){
                	  co7=co7+1;
       %>
                  <li class="nav-item">
                    <a href="#<%=co7%>" class="nav-link" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="<%=co7%>">
                 <i class=""><img src="../assets/ima/spec.png" style=" width: 24px;height: 24px;"></i>
                   
                      <p> <%=R1.getString("abr�viation") %></p>
                    </a>
                    
                       <div class="collapse " id="<%=co7%>">
                <ul class="nav nav-sm flex-column">
                  <%   jibGroupe jb= new jibGroupe();
          ArrayList<groupe> l =jb.getGroup(R1.getInt("idformation"));
   for(groupe g:l){ %>
                      <li class="nav-item ">
                      
               
                          
                          <a href="http://localhost:8080/gestion/SConsRc?idgrou=<%=g.getIdgroupe() %>" class="nav-link "><%=g.getNom() %></a>
                         
                        </li>
                        <%} %>   
                      </ul>
                      </div>
                  </li>
                   <%} %>
                </ul>
              </div>
            </li>
            
            <li class="nav-item ">
             <a class="nav-link" href="#navbar-example" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-example">
                 <i class=""><img src="../assets/ima/jus.png" style=" width: 24px;height: 24px;"></i>
                <p >G�rer les justifications</p>
              </a>
                                        
         <%  String lm="SELECT abr�viation,idformation FROM chefded�partement c,formation f where c.idd�partement=f.idd�partement and idchef="+idchef;
    ResultSet R2 =  state.executeQuery(lm);
 	 %>
   	
              <div class="collapse "id="navbar-example">
                <ul class="nav nav-sm flex-column">
                  <% int co8=7500; while(R2.next()){
                	  co8=co8+1;
       %>
                  <li class="nav-item">
                    <a href="#<%=co8%>" class="nav-link" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="<%=co8%>">
                     <i class=""><img src="../assets/ima/spec.png" style=" width: 24px;height: 24px;"></i>
                  
                      <p> <%=R2.getString("abr�viation") %></p>
                    </a>
                    
                       <div class="collapse " id="<%=co8%>">
                <ul class="nav nav-sm flex-column">
                  <%   jibGroupe jb= new jibGroupe();
          ArrayList<groupe> l =jb.getGroup(R2.getInt("idformation"));
   for(groupe g:l){ %>
                      <li class="nav-item ">
                      
                        
                          
                          <a href="http://localhost:8080/gestion/SJust?idgrou=<%=g.getIdgroupe() %>" class="nav-link "><%=g.getNom() %></a>
                         
                        </li>
                        <%} %>   
                      </ul>
                      </div>
                  </li>
                   <%} %>
                </ul>
              </div>
            </li>
       
          
            
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8080/gestion/Sens?id=<%=idUser%>&name=<%=prenom%>">
                    <i class=""><img src="../assets/ima/ens.png" style=" width: 24px;height: 24px;"></i>
                <p>Mon compte enseignant</p>
              </a>
            </li>
            
            
            
            
            
             <li class="nav-item ">
         
              <a class="nav-link" href="#navbar-dashboards" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-dashboards">
                <i class=""><img src="../assets/img/hor.png"  style=" width: 24px;height: 24px;"></i>
                <p>Affecter les s�ances</p>
              </a>
              <div class="collapse" id="navbar-dashboards">
                <ul class="nav nav-sm flex-column">
                <% for (Formation f:lf){ %>
                  <li class="nav-item">
                    <a href="http://localhost:8080/gestion/SListeENS?iduser=${sessionScope.id}&name=${sessionScope.name}&idformation=<%=f.getIdFormation() %>" class="nav-link">
                     <i class=""><img src="../assets/ima/spec.png" style=" width: 24px;height: 24px;"></i>
                      <p><%=f.getAbreviation()%></p>
                    </a>
                  </li>
                 <%} %>
                </ul>
              </div>
            </li>
              <li class="nav-item active">
         
              <a class="nav-link" href="#navbar-dashboards1" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-dashboards1">
                 <i class=""><img src="../assets/img/list.png"  style=" width: 24px;height: 24px;"></i>
                <p>Consulter le relev� des absences</p>
              </a>
              <div class="collapse" id="navbar-dashboards1">
                <ul class="nav nav-sm flex-column">
                <% for (Formation f:lf){ %>
                  <li class="nav-item">
                    <a href="#<%=f.getAbreviation()%>" class="nav-link" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="<%=f.getAbreviation()%>">
                       <i class=""><img src="../assets/ima/spec.png" style=" width: 24px;height: 24px;"></i>
                      <p><%=f.getAbreviation()%></p>
                      
                    </a>
                     <div class="collapse " id="<%=f.getAbreviation()%>" >
                     <%ArrayList <Integer> lg=hc.selectGroupe(f.getIdFormation()); %>
                      <ul class="nav nav-sm flex-column">
                     <%  for (Integer g:lg){%>
                        <li class="nav-item">
                          <a href="http://localhost:8080/gestion/SListegroupe?iduser=${sessionScope.id}&name=${sessionScope.name}&idgroupe=<%=g %>" class="nav-link "><%=hc.selectNOMGroupe(g) %></a>
                        </li>
                        <%} %>
                      </ul>
                    </div>
                  </li>
                 <%} %>
                </ul>
              </div>
            </li>
            
                  <li class="nav-item ">
         
              <a class="nav-link" href="#navbar-dashboards2" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-dashboards2">
                  <i class=""><img src="../assets/img/exclu.png"  style=" width: 24px;height: 24px;"></i>
                <p>Consulter la liste des exlus</p>
              </a>
              <div class="collapse" id="navbar-dashboards2">
                <ul class="nav nav-sm flex-column">
                <% for (Formation f:lf){ %>
                  <li class="nav-item">
                    <a href="#<%=f.getIdFormation()%>" class="nav-link" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="<%=f.getIdFormation()%>">
                      <i class=""><img src="../assets/ima/spec.png" style=" width: 24px;height: 24px;"></i>
                      <p><%=f.getAbreviation()%></p>
                      
                    </a>
                     <div class="collapse " id="<%=f.getIdFormation()%>" >
                     <%ArrayList <Integer> lg=hc.selectGroupe(f.getIdFormation()); %>
                      <ul class="nav nav-sm flex-column">
                     <%  for (Integer g:lg){%>
                        <li class="nav-item">
                          <a href="http://localhost:8080/gestion/SListegroupeEXCLUS?iduser=${sessionScope.id}&name=${sessionScope.name}&idgroupe=<%=g %>&idformation=<%=f.getIdFormation() %>" class="nav-link "><%=hc.selectNOMGroupe(g) %></a>
                        </li>
                        <%} %>
                      </ul>
                    </div>
                  </li>
                 <%} %>
                </ul>
              </div>
            </li>
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
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
           <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" name="search" id="search" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                 <i class=""><img src="../assets/ima/search.png" style=" width: 24px;height: 24px;"></i>
                 <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="homeCHEF.jsp">
                  <i class="material-icons">homed</i>
                 
                </a>
              </li>
           
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Mon profil</a>
                  <a class="dropdown-item" href="#">param�tre</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">D�connecter</a>
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
          
        <%  
            int idgroupe=(Integer)session.getAttribute("idgroupe");
           
           
    
          
            
      
            Connection conn= (Connection)DriverManager.getConnection(url,user,passwd);
            Statement stmt=conn.createStatement();
           
            ResultSet rs1=stmt.executeQuery("select * from s�ance e, absence a where idgroupe="+idgroupe+" and e.ids�ance= a.ids�ance order by (date) desc "); //ramener tous le module et le type de la seance
            
            %>
       
           
           <div class="col-md-12">
            
    
              <div class="card card-plain">
         
                <div class="card-header card-header-primary" >
                  <h4 class="card-title "> <%= hc.selectNOMGroupe(idgroupe)%>  </h4>
                  <p class="card-category" > </p>
                </div>
             
                <div class="card-body">
                  <div class="table-responsive">
                      
                    <table class="table "id="myTable">
             <thead class="">
                        
                        <th>Nom</th>
                        <th>Pr�nom</th>
                        <th>Module</th>
                        <th>Type</th>
                        <th>HeureD</th>
                        <th>HeureF</th>
                        <th>Date<th>
                        <th></th>
                       
             </thead>
               
            <tbody>  
             <%
             
             
             
             
             
             while(rs1.next()){
            	 
                 Class.forName("com.mysql.jdbc.Driver");
                
                 Connection conn1= (Connection)DriverManager.getConnection(url,user,passwd);
                 Statement stmt1=conn1.createStatement();
            	
            	 ResultSet rs2=stmt1.executeQuery("select * from etudiant  where idetudiant="+rs1.getInt("idetudiant"));//le module et le type de la seance
             rs2.next();
             %>
		    <tr>
			
				<td> <%=rs2.getString("nom") %> </td>
			    <td> <%=rs2.getString("pr�nom") %> </td>
			    <td> <%=hc.selectNOMModule(rs1.getInt("idmodule")) %> </td>
			    <td> <%=rs1.getString("type") %> </td>
			    <td> <%=rs1.getString("heureD") %> </td>
			    <td> <%=rs1.getString("heureF") %> </td>
			    <td><%=rs1.getString("date") %></td>
			    <td><a class="nav-link" href="http://localhost:8080/gestion/SRelevedunEtudChef?idetudiant=<%= rs2.getInt("idetudiant") %>&iduser=${sessionScope.iduser}&name=${sessionScope.name}"  class="btn btn-round btn-fill btn-info">
                             <i class=""><img src="../assets/img/per.PNG" ></i> </a> </a>
                            
                            
                            </td>
			    
		    </tr>
		        
		     <% }   %>
	       <% 
	       
	    	   
	    	   
	         Connection conn2= (Connection)DriverManager.getConnection(url,user,passwd);
	        
            Statement stmt2=conn2.createStatement();
           ResultSet rs=stmt2.executeQuery("select idsection  from groupe where idgroupe="+idgroupe);
           rs.next();
           ResultSet rs3=stmt2.executeQuery("select * from s�ance e, absence a where idsection="+rs.getInt("idsection")+" and e.ids�ance= a.ids�ance order by (date) desc ");
           
	         while(rs3.next()){
            	 
                 Class.forName("com.mysql.jdbc.Driver");
                
                 Connection conn1= (Connection)DriverManager.getConnection(url,user,passwd);
                 Statement stmt1=conn1.createStatement();
                
            	 ResultSet rs2=stmt1.executeQuery("select * from etudiant  where idetudiant="+rs3.getInt("idetudiant")+" and idgroupe="+idgroupe+" ");//le module et le type de la seance
            if (rs2.next()){
             %>
		    <tr>
			
				<td> <%=rs2.getString("nom") %> </td>
			    <td> <%=rs2.getString("pr�nom") %> </td>
			    <td> <%=hc.selectNOMModule(rs3.getInt("idmodule")) %> </td>
			    <td> <%=rs3.getString("type") %> </td>
			    <td> <%=rs3.getString("heureD") %> </td>
			    <td> <%=rs3.getString("heureF") %> </td>
			    <td><%=rs3.getString("date") %></td>
			    <td><a class="nav-link" href="http://localhost:8080/gestion/SRelevedunEtudChef?idetudiant=<%= rs2.getInt("idetudiant") %>iduser=${sessionScope.iduser}&name=${sessionScope.name}"  class="btn btn-round btn-fill btn-info">
                            <i class="material-icons">account_box</i> </a>
                            
                            
                            </td>
			    
		    </tr>
		    <%}} 
	       
	       
	        
	       
	       
	       %>
		   
		   
            </tbody>
            
		</table>
		      
                  </div>
                </div>
            
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
            <a > Facult� des Nouvelles Technologies de l'Information et de la Communication NTIC. <br>
            Adresse :Universit� Constantine 2 - Abdelhamid Mehri
Ali Mendjeli - BP : 67A, Constantine - Alg�rie.
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
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>
    <script>

$(document).ready(function(){  
           $('#search').keyup(function(){  
                search_table($(this).val());  
           });  
           function search_table(value){  
                $('#myTable tr').each(function(){  
                     var found = 'false';  
                     $(this).each(function(){  
                          if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                          {  
                               found = 'true';  
                          }  
                     });  
                     if(found == 'true')  
                     {  
                          $(this).show();  
                     }  
                     else  
                     {  
                          $(this).hide();  
                     }  
                });  
           }  
      });  
 </script> 
</body>
</html>