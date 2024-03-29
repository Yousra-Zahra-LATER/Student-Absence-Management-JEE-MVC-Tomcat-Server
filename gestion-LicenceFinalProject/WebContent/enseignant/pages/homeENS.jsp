 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@page import="modeleE.*"  %>
       <%@page import="java.sql.*" %>
       <%@ page import="java.text.SimpleDateFormat" %>
       <%@page import= "java.time.*"%>
      <%@page import ="java.time.format.DateTimeFormatter"%>
       <%@page import ="java.util.Locale"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/logo.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Home Enseignant
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" /> 
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" type="text/css"/>
  <link href="../assets/demo/demo.css" rel="stylesheet" type="text/css"/>
  <style>




/* mouse over link */
.linkT a:hover {
  color: hotpink;
}

/
}
</style>
</head>
<body class="">
  <div class="wrapper">
    <div class="sidebar" data-color="green" data-background-color="white" data-image="../assets/img/log.jpg">
 <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>   
        <div class="logo"><a class="simple-text logo-normal">
         <img src="../assets/img/logo.png" style="position:absolute;
         top:6px;
         left:14px;  
         width: 65px;
          height: 65px; ">
          Bienvenue</br>
           ${sessionScope.n}
            Bienvenue
         
        </a>
        	 <% 
        	  HomeENS h=new HomeENS();
        	 ListedesAbsences L=new ListedesAbsences();
        	 //int id=h.selectIDens((int)session.getAttribute("id"));
        	%>
        	</div>
         <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active ">
            <a class="nav-link" href="./homeENS.jsp">
              <i class=""><img src="../assets/img/round_home_black_18dp.png" style="
         width: 24px;
          height: 24px; "" ></i>
              <p>Home</p>
            </a>
          </li>
         
           
          <li class="nav-item  ">
            <a class="nav-link" href="http://localhost:8080/gestion/SfaireLappel?iduser=${sessionScope.id}&name=${sessionScope.name}">
               <i class=""><img src="../assets/img/round_how_to_reg_black_18dp.png" style="
         width: 24px;
          height: 24px; "" ></i>
              <p>Faire l'appel</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="http://localhost:8080/gestion/SlistedesGroupes?iduser=${sessionScope.id}&name=${sessionScope.name}">
             <i class=""><img src="../assets/img/round_library_books_black_18dp.png" style="
         width: 24px;
          height: 24px; "" ></i>
              <p> les relev�s d'absence</p>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="http://localhost:8080/gestion/SlistedesModules?iduser=${sessionScope.id}&name=${sessionScope.name}">
               <i class=""><img src="../assets/img/round_list_alt_black_18dp.png" style="
         width: 24px;
          height: 24px; "" ></i>
              <p>Etablire la liste des exlus</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="http://localhost:8080/gestion/SlistedesGroupes?iduser=${sessionScope.id}">
               <i class=""><img src="../assets/img/round_insert_chart_outlined_black_18dp.png" style="
         width: 24px;
          height: 24px; "" ></i>
              <p>les statistiques</p>
            </a>
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
            <ul class="navbar-nav">
             
           
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     
             <i class=""><img src="../assets/img/round_account_circle_black_48dp.png" style="
         width: 24px;
          height: 24px; "" ></i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item"  href="http://localhost:8080/gestion/SGererENS?iduser=${sessionScope.id}&name=${sessionScope.name}">Mon profil</a>
                 
                
                  <a class="dropdown-item" href="http://localhost:8080/gestion/Logout">D�connecter</a>
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
           
           int id2=h.selectIDens((Integer)session.getAttribute("id"));
  
         
           try
          {
        	   Class.forName("com.mysql.cj.jdbc.Driver");
        	   String username="root";
       		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
         	String password="00000";
       	
          Connection conn= (Connection)DriverManager.getConnection(url,username,password);
          Statement stmt=conn.createStatement();
          
          ResultSet rs1=stmt.executeQuery("select * from s�ance s,groupe g where s.idgroupe=g.idgroupe and s.idenseignant="+id2+" and jour='"+dayInFRench+"'");
         
          
          
          while(rs1.next()){
          
          
          
          %>
        
            <div class=" col-md-4">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class=""><img src="../assets/img/groups.PNG"  ></i>
                  </div>
                  <p class="card-category"><%=rs1.getString("jour") %> <%=rs1.getString("heureD") %> - <%=rs1.getString("heureF") %></p>
                  <h3 class="card-title"><%= rs1.getString("type") %> <%= L.SelectionnerModule(rs1.getInt("idmodule"))%></h3>
                  
               
                </div>
                
                <div class="card-footer">
                  <div class="stats">
                     <i class=""><img src="../assets/img/vis.PNG"  ></i>
                    <a href="http://localhost:8080/gestion/SafficherlisteFaireLappel?op=<%=  rs1.getInt("ids�ance") %>&op1=<%=rs1.getInt("idgroupe")  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><h4> Consulter <%=rs1.getString("nom") %> </h4></a>
                  </div>
                </div>
                
              </div>
            </div>
             <%}
          
          conn.close();
          stmt.close();
          rs1.close();
      } catch (Exception e) {
          e.printStackTrace();
      }
          
          
           try
           {
        	   Class.forName("com.mysql.cj.jdbc.Driver");
        	   String username="root";
       		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
         	String password="00000";
       	
           Connection conn= (Connection)DriverManager.getConnection(url,username,password);
           Statement stmt=conn.createStatement();
           
           
          ResultSet rs2=stmt.executeQuery("select * from s�ance s,section se where s.idsection=se.idsection  and s.idenseignant="+id2+" and jour='"+dayInFRench+"'" );
           
           
          
            while(rs2.next()){%>
          
          
          
          
        
            <div class=" col-md-4">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">groups</i>
                  </div>
                  <p class="card-category"><%=rs2.getString("jour") %> <%=rs2.getString("heureD") %> - <%=rs2.getString("heureF") %></p>
                  <h3 class="card-title"><%= rs2.getString("type") %> <%= L.SelectionnerModule(rs2.getInt("idmodule"))%></h3>
                  
               
                </div>
                
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons text-danger">visibility</i>
                    <a href="http://localhost:8080/gestion/SafficherlisteFaireLappelSection?op=<%=  rs2.getInt("ids�ance") %>&op1=<%=rs2.getInt("idsection")%>&iduser=${sessionScope.id}&name=${sessionScope.name}"> <h4> Consulter <%=rs2.getString("nom") %>  </h4></a>
                  </div>
                </div>
                
              </div>
            </div>
            
          
          
          
          
          
          
        <%
            }  conn.close();
            stmt.close();
            rs2.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
            
          %>
          
          
          
          
          
                  <div class="col-md-8 ml-auto mr-auto">
         <div class="table100 ver6 m-b-110">
         
                             

					<table data-vertable="ver6">
                 
                    
             <thead >
             
           
             <tr class="row100 head">
                        <th class="column100 column4" data-column="column4"></th>
                        <th class="column100 column4" data-column="column4">8:30-10:00</th>
                        <th class="column100 column4" data-column="column4">10:00-11:30</th>
                        <th class="column100 column3" data-column="column3">11:30-13:00</th>
                        <th class="column100 column4" data-column="column4">13:00-14:30</th>
                        <th class="column100 column5" data-column="column5">14:30-16:00</th>
                        </tr>
                      </thead>
	
                      <tbody>
           
            		
            		
            		
             
 
			<tr class="row100">
			 <% try
            {
				  Class.forName("com.mysql.cj.jdbc.Driver");
	        	   String username="root";
	       		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	         	String password="00000";
	       	
            
            int id1=h.selectIDens((Integer)session.getAttribute("id"));
           System.out.println(id1);
            String query="select * from s�ance where idenseignant="+id1
            		+" and jour='dimanche' order by (heured); ";
            
            Connection conn= (Connection)DriverManager.getConnection(url,username,password);
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);
         
          
            int co=0;
            		
            		
            		
             %>
			<td class="column100 column4" data-column="column4"> Dimanche</td>
			<% while (rs.next()){
				
				String heured =rs.getString("heured");
			int idgroupe ;
			int idsection;
			String salle;
                  if ( heured.equals("08:30") ){co++;
                  idgroupe =rs.getInt("idgroupe");
                  idsection=rs.getInt("idsection");
                  salle=rs.getString("numSalle");
                  if (idsection==0){%>
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
               </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
 			    <%}else{ %> 
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
 			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
 			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("10:00")){ co++;
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
					
				 <% if(heured.equals("11:30")) { co++; 
				 idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("13:00")  ){co++; 
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				 
				 <% if(heured.equals("14:30")  ){ co++; idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				<%} } } } } }   
			 while (co<5){%>
			 <td class="column100 column5" data-column="column5">-</td>
			<% co++;} conn.close();
                    stmt.close();
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } %>
		    </tr>
		    	
		  <tr class="row100">
	  <% try
            {
		  Class.forName("com.mysql.cj.jdbc.Driver");
   	   String username="root";
  		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    	String password="00000";
  	
            int id=h.selectIDens((Integer)session.getAttribute("id"));
            String query="select * from s�ance where idenseignant="+id+" and jour='lundi' order by (heured); ";
            
            Connection conn= (Connection)DriverManager.getConnection(url,username,password);
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);
         
          
            int co=0;
         
            		
            		
             %>
			<td class="column100 column4" data-column="column4"> Lundi</td>
			<% while (rs.next()){
				
				String heured =rs.getString("heured");
			int idgroupe ;
			int idsection;
			String salle;
                  if ( heured.equals("08:30") ){co++;
                  idgroupe =rs.getInt("idgroupe");
                  idsection=rs.getInt("idsection");
                  salle=rs.getString("numSalle");
                  if (idsection==0){%>
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
               </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
 			    <%}else{ %> 
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
 			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
 			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("10:00")){ co++;
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
					
				 <% if(heured.equals("11:30")) { co++; 
				 idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("13:00")  ){co++; 
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				 
				 <% if(heured.equals("14:30")  ){ co++; idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				<%} } } } } }   
			 while (co<5){%>
			 <td class="column100 column5" data-column="column5">-</td>
			<% co++;} conn.close();
                    stmt.close();
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } %>
		 </tr>
	      <tr class="row100">
			 <% try
            {
				  Class.forName("com.mysql.cj.jdbc.Driver");
	        	   String username="root";
	       		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	         	String password="00000";
	       	
            int id=h.selectIDens((Integer)session.getAttribute("id"));
            String query="select * from s�ance where idenseignant="+id+" and jour='mardi' order by (heured); ";
            
            Connection conn= (Connection)DriverManager.getConnection(url,username,password);
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);
         
          
            int co=0;
            HomeENS h1= new HomeENS();	
            		
            		
             %>
			<td class="column100 column4" data-column="column4">Mardi</td>
			<% while (rs.next()){
				
				String heured =rs.getString("heured");
			int idgroupe ;
			int idsection;
			String salle;
                  if ( heured.equals("08:30") ){co++;
                  idgroupe =rs.getInt("idgroupe");
                  idsection=rs.getInt("idsection");
                  salle=rs.getString("numSalle");
                  if (idsection==0){%>
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
               </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
 			    <%}else{ %> 
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
 			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
 			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("10:00")){ co++;
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
					
				 <% if(heured.equals("11:30")) { co++; 
				 idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("13:00")  ){co++; 
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				 
				 <% if(heured.equals("14:30")  ){ co++; idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				<%} } } } } } 
			 while (co<5){%>
			 <td class="column100 column5" data-column="column5">-</td>
			<% co++;} conn.close();
                    stmt.close();
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } %>
		    </tr>
		    <tr class="row100">
			 <% try
            {
				 Class.forName("com.mysql.cj.jdbc.Driver");
	        	   String username="root";
	       		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	         	String password="00000";
            int id=h.selectIDens((Integer)session.getAttribute("id"));
            String query="select * from s�ance where idenseignant="+id+" and jour='mercredi' order by (heured); ";
            
            Connection conn= (Connection)DriverManager.getConnection(url,username,password);
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);
         
          
            int co=0;
            		
            	HomeENS h1= new HomeENS();	
            		
             %>
			<td class="column100 column4" data-column="column4"> Mercredi</td>
			<% while (rs.next()){
				
				String heured =rs.getString("heured");
			int idgroupe ;
			int idsection;
			String salle;
                  if ( heured.equals("08:30") ){co++;
                  idgroupe =rs.getInt("idgroupe");
                  idsection=rs.getInt("idsection");
                  salle=rs.getString("numSalle");
                  if (idsection==0){%>
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
               </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
 			    <%}else{ %> 
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
 			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
 			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("10:00")){ co++;
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
					
				 <% if(heured.equals("11:30")) { co++; 
				 idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("13:00")  ){co++; 
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				 
				 <% if(heured.equals("14:30")  ){ co++; idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				<%} } } } } } 
			 while (co<5){%>
			 <td class="column100 column5" data-column="column5">-</td>
			<% co++;} conn.close();
                    stmt.close();
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } %>
		    </tr>
		    <tr class="row100">
			 <% try
            {
				 Class.forName("com.mysql.cj.jdbc.Driver");
	        	   String username="root";
	       		 String url="jdbc:mysql://localhost/gestion?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	         	String password="00000";
            int id=h.selectIDens((Integer)session.getAttribute("id"));
            String query="select * from s�ance where idenseignant="+id+" and jour='jeudi' order by (heured); ";
            
            Connection conn= (Connection)DriverManager.getConnection(url,username,password);
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(query);
         
          
            int co=0;
            		HomeENS h1= new HomeENS ();
            		
            		
             %>
			<td class="column100 column4" data-column="column4"> Jeudi</td>
			<% while (rs.next()){
				
				String heured =rs.getString("heured");
			int idgroupe ;
			int idsection;
			String salle;
                  if ( heured.equals("08:30") ){co++;
                  idgroupe =rs.getInt("idgroupe");
                  idsection=rs.getInt("idsection");
                  salle=rs.getString("numSalle");
                  if (idsection==0){%>
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
               </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
 			    <%}else{ %> 
 			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
 			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
 			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("10:00")){ co++;
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
					
				 <% if(heured.equals("11:30")) { co++; 
				 idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
			     
			     <% if(heured.equals("13:00")  ){co++; 
			     idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				 
				 <% if(heured.equals("14:30")  ){ co++; idgroupe =rs.getInt("idgroupe");
                 idsection=rs.getInt("idsection");
                 salle=rs.getString("numSalle");
                 if (idsection==0){%>
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/SconsulterLeGroupe?op=<%=idgroupe  %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionGroupe(idgroupe)%>
              </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></br><%= salle%></a></td>
			    <%}else{ %> 
			    <td class="column100 column4" data-column="column4"><a class="linkT" href="http://localhost:8080/gestion/Sconsulterlasection?op=<%=idsection %>&iduser=${sessionScope.id}&name=${sessionScope.name}"><%=h.selectionNomsection(idsection)%>
			    </br> <%= L.SelectionnerModule(rs.getInt("idmodule")) %></a></td><%} %>
			    <% } else {co++;%><td class="column100 column4" data-column="column4">-</td>
				<%} } } } } } 
			 while (co<5){%>
			 <td class="column100 column5" data-column="column5">-</td>
			<% co++;} conn.close();
                    stmt.close();
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } %>
		    </tr>
		    
        
		 </tbody>
		</table>
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
            <a >Universit� Abdelhamid Mehri - Constantine 2. Tous les droits sont r�serv�s.
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
</body>
</html>