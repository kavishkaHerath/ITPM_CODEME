

<%@page import="com.itpm.model.InheritanceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.controller.InheritanceController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inheritance</title>
        
         <link rel="stylesheet" href="css/styl2.css"  >
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
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
      <div class="logo">Inheritance </div>
      <div class="logo"><button onclick="window.location.href = 'Isetting.jsp';">Setting</button>
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
                                                <th scope="col">Count</th>
                                                <th scope="col">Class Name</th>
                                                <th scope="col">No of direct inheritance</th>
                                                <th scope="col">No of indirect inheritance</th>
                                                <th scope="col">Total inheritance</th>
                                                <th scope="col">Ci</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                InheritanceController inheritance = new InheritanceController();
                                                String filename=session.getAttribute("filename").toString();
                                                ArrayList<InheritanceDTO> inheritanceList = inheritance.measureInheritance(filename);
                                                int lineNo=0;
                                                for (InheritanceDTO I : inheritanceList) {
                                                    lineNo++;
                                            %>
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=I.getClassName()%></td>
                                                <td><%=I.getDirectInheritance()%></td>
                                                <td><%=I.getIndirectInheritance()%></td>
                                                <td><%=I.getTotal()%></td>
                                                <td><%=I.getCi()%></td>          
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
