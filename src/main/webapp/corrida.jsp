<%-- 
    Document   : corrida.jsp
    Created on : May 6, 2022, 9:32:12 PM
    Author     : ceqs
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.utp.integrador.credito.vehicular.model.Cuota"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
        
        <link href="css/estilos.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="row mx-md-0">
                <div class="col-12 pr-0">
                    <nav class="navbar navbar-expand-lg navbar-light pr-0">
                        <a class="navbar-brand" href="#">
                            
                            <img id="logo-ss-header" src="images/utp-logo.svg" class="d-inline-block ml-4" alt="Aplicación">
                            <img id="logo-ss-header-contraste" src="images/utp-logo.svg" class="ml-4 d-none" alt="Aplicación">
                        </a>
                    </nav>
                </div>
            </div>
        </header>
        <div id="top-section" class="row position-relative pb-0 pb-md-4 mx-md-0">
            
            <div class="col-12 pl-4 pr-3 pb-4 p-md-0 pr-md-3 text-center">
                <div class="aux-card-box">
                    <form class="row g-3" method="post" action="corrida.jsp">
                        <div class="col-12 mb-3">
                            <h3 class="sm-text-center md-text-center lg-text-center mt-2">Datos ingresados</h3>
                        </div>
                        <div class="col-12 col-md-3 ml-3 ml-md-0">
                            <div class="row">
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Tipo de Auto:</span></div>
                                    <div>
                                        <input type="text" class="input-text-hidden long" value="Nuevo">
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Plazo:</span></div>
                                    <div>
                                        <input id="valor_plazo" type="text" class="input-text-hidden long" value="36 meses">
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Valor del Auto:</span></div>
                                    <div>
                                        <input id="valor_auto" type="text" class="input-text-hidden long" value="$ 15000">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3 ml-3 ml-md-0">
                            <div class="row">
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Moneda:</span></div>
                                    <div>
                                        <input type="text" class="input-text-hidden long" value="Dólares">
                                    </div>
                                </div>

                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Ingresos:</span></div>
                                    <div>
                                        <input id="valor_ingresos" type="text" class="input-text-hidden long" value="S/. 4000">
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Cuota Inicial:</span></div>
                                    <div>
                                        <input id="valor_cuota" type="text" class="input-text-hidden long" value="20%">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3 ml-3 ml-md-0">
                            <div class="row">
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Seguro desgravamen:</span></div>
                                    <div>
                                        <input type="text" class="input-text-hidden long" value="0.050%">
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">TEA:</span></div>
                                    <div>
                                        <input type="text" class="input-text-hidden long" value="16.5%">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3 ml-3 ml-md-0">
                            <div class="row">
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Ubicación:</span></div>
                                    <div>
                                        <input type="text" class="input-text-hidden long" value="Lima">
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Comisión</span></div>
                                    <div>
                                        <input type="text" class="input-text-hidden long" value="$ 4.05">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-12 pl-4 pr-3 pb-4 p-md-0 pr-md-3">
                <h3>Cronograma:</h3>
            </div>
            <div class="table-responsive div-cronograma text-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">N</th>
                            <th scope="col">CAPITAL</th>
                            <th scope="col">INTERESES</th>
                            <th scope="col">AMORTIZACION</th>
                            <th scope="col">COMISIÓN</th>
                            <th scope="col">SEGURO DESG</th>
                            <th scope="col">PAGO $</th>
                            <th scope="col">PAGO S/.</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            DecimalFormat df = new DecimalFormat("0.00");
                            List<Cuota> cuotas = (List<Cuota>)request.getAttribute("cuotas");
                            String moneda = (((String)request.getAttribute("moneda")).equals("D")? "$": "S/.");
                            for(Cuota cuota : cuotas) {
                        %>
                        <tr>
                            <td><%=cuota.getNumero()%></td>
                            <td><%=moneda%><%=df.format(cuota.getCapital())%></td>
                            <td><%=moneda%><%=df.format(cuota.getInteres())%></td>
                            <td><%=moneda%><%=df.format(cuota.getAmortizacion())%></td>
                            <td><%=moneda%><%=df.format(cuota.getComision())%></td>
                            <td><%=moneda%><%=df.format(cuota.getDesgravamen())%></td>
                            <td>$<%=df.format(cuota.getPagoDolares())%></td>
                            <td>S/.<%=df.format(cuota.getPagoSoles())%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <div class="col-12 pl-4 pr-3 pb-4 p-md-0 pr-md-3">
                <h3>Comparación de ofertas de tasas:</h3>
            </div>
            <div class="row row-cols-1 row-cols-md-3 g-4">
              <div class="col">
                <div class="card">
                  <img src="images/bancos/bcp.svg" class="card-img-top" alt="bcp">
                  <div class="card-body">
                    <h5 class="card-title">Banco de credito del Perú</h5>
                    <p class="card-text">BCP ofrece una tasa desde el <b>8.00%</b> anual.</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card">
                    <img src="images/bancos/scotiabank.jpeg" class="card-img-top" alt="scotiabank">
                  <div class="card-body">
                    <h5 class="card-title">Scotiabank</h5>
                    <p class="card-text">Scotiabank ofrece una tasa desde el <b>8.50%</b> anual.</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <img src="images/bancos/bbva.svg" class="card-img-top" alt="bbva">
                  <div class="card-body">
                    <h5 class="card-title">BBVA</h5>
                    <p class="card-text">BBVA ofrece una tasa desde el <b>9.00%</b> anual.</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <img src="images/bancos/banbif.svg" class="card-img-top" alt="banbif">
                  <div class="card-body">
                    <h5 class="card-title">Banbif</h5>
                    <p class="card-text">Banbif ofrece una tasa desde el <b>9.50%</b> anual.</p>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </body>
</html>
