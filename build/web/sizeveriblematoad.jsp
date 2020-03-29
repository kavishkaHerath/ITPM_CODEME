<%-- 
    Document   : sizevariable
    Created on : Feb 21, 2020, 3:28:38 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.model.SizeDTO"%>
<%@page import="com.itpm.controller.SizeVMController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Size variable</title>
        <link rel="stylesheet" href="css/styl2.css"  >
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



    </head>
    <body style="background: #e1ecf2;">
        <div class="wrapper">
  <div class="top_navbar">
       <div class="hamburger">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
        
      <div class="logo">CodeME </div>
      <div class="logo">Size Variable Methods </div>
      <div class="logo"><button onclick="window.location.href = 'svmSetting.jsp';">Setting</button>
    </div>
    </div>
  </div>

        <div class="wrapper">
            <div class="container-fluid">
            
                <br>

              

                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Nkw</th>
                                                <th scope="col">Nid</th>
                                                <th scope="col">Nop</th>
                                                <th scope="col">Nnv</th>
                                                <th scope="col">Nsl</th>
                                                <th scope="col">Cs</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                SizeVMController svmc = new SizeVMController();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<SizeDTO> sizeList = svmc.measureSize(filename);
                                                int lineNo = 0;
                                                for (SizeDTO s : sizeList) {
                                                    lineNo++;
                                            %>
                                            
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=s.getCodeLine()%></td>
                                                <td><%=s.getNkw() != 0 ? s.getNkw() : ""%></td>
                                                <td><%=s.getNid() != 0 ? s.getNid() : ""%></td>
                                                <td><%=s.getNop() != 0 ? s.getNop() : ""%></td>
                                                <td><%=s.getNnv() != 0 ? s.getNnv() : ""%></td>
                                                <td><%=s.getNsl() != 0 ? s.getNsl() : ""%></td>
                                                <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                            </tr>

                                            <%
                                                }
                                            %>


                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>


                    </div> 
                    <div class="col-md-1"></div> 
                </div>


               


            </div>
        </div>
    </body>
</html>
