<%-- 
    Document   : files
    Created on : Apr 29, 2017, 11:45:45 AM
    Author     : java3
--%>

<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
    <!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
    <head>
        <title>RAAC</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    </head>
    <body id="top">

        <div class="wrapper row0">
            <div id="topbar" class="hoc clear"> 

            </div>
        </div>

        <div class="wrapper row1">
            <header id="header" class="hoc clear"> 
                <!-- ################################################################################################ -->
                <div id="logo" class="fl_left">
                    <center><h1><a href="#">RAAC: Robust and Auditable Access Control with Multiple
                                Attribute Authorities for Public Cloud Storage</a></h1></center>
                </div>

                <!-- ################################################################################################ -->
            </header>
        </div>

        <div class="bgded" style="background-image:url('images/demo/backgrounds/dp.jpg');"> 

            <div class="wrapper overlay">
                <article id="pageintro" class="hoc clear"> 
                    <!-- ################################################################################################ -->
                    <h6 style="size:20 px"  >RAAC: Robust and Auditable Access Control with Multiple
                        Attribute Authorities for Public Cloud Storage</h6>


                </article>
            </div>

        </div>
        <div class="wrapper row2">
            <nav id="mainav" class="hoc clear"> 

                <ul class="clear">
                    <li class="active"><a href="index.jsp">HOME</a></li>
                    <li><a class="drop" href="#">DATA USER</a>
                        <ul>
                            <li><a href="ulog.jsp">LOGIN</a></li>
                            <li><a href="ureg.jsp">REGISTRATION</a></li>

                        </ul>
                    </li>
                    <li><a class="drop" href="#">DATA OWNER</a>
                        <ul>
                            <li><a href="olog.jsp">LOGIN</a></li>
                            <li><a href="oreg.jsp">REGISTRATION</a></li>            
                        </ul>
                    </li>
                    <li><a class="drop" href="#">AA</a>
                        <ul>
                            <li><a href="aalog.jsp">LOGIN</a></li>
                            <li><a href="areg.jsp">REGISTRATION</a></li>            
                        </ul>
                    </li>
                    <!--        <li><a class="drop" href="#">Dropdown</a>
                              <ul>
                                <li><a href="#">Level 2</a></li>
                                <li><a class="drop" href="#">Level 2 + Drop</a>
                                  <ul>
                                    <li><a href="#">Level 3</a></li>
                                    <li><a href="#">Level 3</a></li>
                                    <li><a href="#">Level 3</a></li>
                                  </ul>
                                </li>
                                <li><a href="#">Level 2</a></li>
                              </ul>
                            </li>-->
                    <li><a href="calog.jsp">CA</a></li>
                    <li><a href="cloudlog.jsp">Cloud</a></li>
                </ul>
                <!-- ################################################################################################ -->
            </nav>
        </div>

        <div class="wrapper row3">
            <main class="hoc container clear"> 
                <center> <h3>Files</h3></center><br><br><br><br>

                <div class="scrollable">
                    <table style="width: 700px;float: right">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>File Name</th>                            
                                <th>View Details</th>  
                                <th>File Download Request</th>
                                <th>File View Request</th>
                                <th>View File</th>
                                <th>Download</th>
                            </tr>
                        </thead>
                        <%

                            String uid = (String) session.getAttribute("uid");
                            System.out.println("UUUid==" + uid);
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                con = DbConnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from fileupload");
                                while (rs.next()) {%>                    
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("filename")%></td>              
                            <td><a href="view1.jsp?id=<%=rs.getString("id")%>">View</a></td>
                            <td><a href="request.jsp?id=<%=rs.getString("id")%>">Request</a></td>
                            <td><a href="vrequest.jsp?id=<%=rs.getString("id")%>">Request</a></td>
                            <td><a href="viewcontent.jsp?id=<%=rs.getString("id")%>">View File</a></td>
                            <td><a href="downkeyverify.jsp?id=<%=rs.getString("id")%>">Download</a></td>             
                        </tr>


                        <%}


                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table>
                </div>
                <div style="width: 250px" class="sidebar"> 
                    <!-- ################################################################################################ -->
                    <h6>Side Menu Bar</h6>
                    <nav>


                        <li>
                            <ul>
                                <li><a href="uhome.jsp">Home</a></li>
                                <li><a href="keyreq.jsp">Key Request</a></li>
                                <li><a href="keyverify.jsp">Key Verification</a></li>
                                <li><a href="ulog.jsp">Logout</a></li>
                            </ul>
                        </li>



                    </nav></div>

            </main></div>