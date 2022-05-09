<%-- 
    Document   : index.jsp
    Created on : Apr 29, 2022, 10:09:38 PM
    Author     : ceqs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Credito Vehicular</title>

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
            <div id="top-left-section" class="col-12 col-md-6 d-flex">
                <div class="row px-3 pl-md-5 pr-md-5">
                    <div class="col-12 mt-3 text-center text-md-left">
                        <h1 class="aux-texto-azul">Calcula tu crédito vehicular y obten toda la información sobre el calculo de cuotas</h1>
                    </div>
                    <div class="col-12 text-center text-md-left">
                        <p>Usa nuestra calculadora de crédito vehicular y descubre el pago mensual de tu nuevo auto a crédito. Nuestra aplicación permitirá calcular el préstamo, de inmediato y sin necesidad de conocer de fórmulas financieras, presentando
                            la información de forma clara y entendible para nuestros usuarios. Al mismo tiempo, permitirá comparar distintas opciones de
                            préstamos de las principales entidades financieras rápidamente y de manera concisa.</p>
                    </div>
                    <div class="d-none d-md-block col-md-12 text-center align-self-end">
                        <img id="auto-cel" src="images/auto_cel.svg" alt="UTP">
                        <img id="peru-ciudad" src="images/peru_ciudad.svg" alt="UTP">
                    </div>
                    <div class="col-12 col-md-12 text-center d-none d-md-flex pt-5">
                        <h5>Formulas:</h5>
                    </div>
                    <div class="col-12 col-md-12 text-center d-none d-md-flex">
                        <br>
                        <div class="banda_formulas row">
                            <div class="col logo_banda">
                                 <img src="images/formulas/tem.svg" alt="TEM">
                             </div>
                             <div class="col logo_banda">
                                 <img src="images/formulas/tcem.svg" alt="TCEM">
                             </div>
                             <div class="col logo_banda">
                                 <img src="images/formulas/tcea.svg" alt="TCEA">
                             </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 text-center d-none d-md-flex">
                        <div class="banda_formulas row">
                            <div class="col logo_banda">
                                <img src="images/formulas/interes.svg" alt="INTERES">
                            </div>
                            <div class="col logo_banda">
                                <img src="images/formulas/cuota.svg" alt="CUOTAS">
                            </div>
                        </div>
                    </div>
                </div>
            </div>        

            <div id="top-right-section" class="col-12 col-md-6 pl-4 pr-3 pb-4 p-md-0 pr-md-3">
                <div class="aux-card-box">
                    <form id="cotizador" class="row g-3" method="post" action="calcular">
                        <input type="hidden" name="opc" value="1">
                        <div class="fillerH-x1 hidden-md hidden-lg hidden-xl"></div>
                        <div class="col-12 mb-3">
                            <h3 id="titulo-formulario" class="sm-text-center md-text-center lg-text-center mt-2">Completa el formulario y obten tu cronograma al instante</h3>
                        </div>
                        <div class="col-12 col-md-6 ml-3 ml-md-0">
                            <div class="row">
                                <!--
                                <div class="col-12">
                                    <h3 id="titulo-datos-vehiculo" class="sm-text-center">DATOS DEL VEHÍCULO</h3>
                                </div>
                                -->
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Tipo de Auto:</span></div>
                                    <select id="tipo_auto" name="tipo_auto" class="form-select col-12 col-md-8" required="">
                                        <option value="N" selected>Nuevo</option>
                                        <option value="U">Usado</option>
                                        <option value="T">Taxi</option>
                                    </select>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Valor del Auto:</span></div>
                                    <div>
                                        <input id="valor_auto" type="text" class="input-text-hidden long" value="S/. 30000">
                                    </div>
                                    <input id="r_valor_auto" name="r_valor_auto" type="range" class="form-range col-12 col-md-8" required="" min="3000" max="200000" step="1000" value="30000" onchange="changeValorValue(this.value);">
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Plazo:</span></div>
                                    <div>
                                        <input id="valor_plazo" type="text" class="input-text-hidden long" value="12 meses">
                                    </div>
                                    <input id="r_valor_plazo" name="r_valor_plazo" type="range" class="form-range col-12 col-md-8" required="" min="3" max="60" step="1" value="12" onchange="changePlazoValue(this.value);">
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">TEA:</span></div>
                                    <div class="input-group mb-3">
                                        <input id="tea" name="tea" type="number" class="form-control col-12 col-md-8" required="" value="7.00" step="0.01" min="1.00" max="100">
                                        <span class="input-group-text">%</span>
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Seguro desgravamen:</span></div>
                                    <div class="input-group mb-3">
                                        <input id="desgravamen" name="desgravamen" type="number" class="form-control col-12 col-md-8" required="" value="0.050" step="0.001" min="0.001" max="5.000">
                                        <span class="input-group-text">%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 ml-3 ml-md-0">
                            <div class="row">
                                <!--
                                <div class="col-12">
                                    <h3 id="titulo-datos-conductor" class="sm-text-center">DATOS DEL CONDUCTOR</h3>
                                </div>
                                -->
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Moneda:</span></div>
                                    <select id="moneda" name="moneda" class="form-select col-12 col-md-8" required="">
                                      <option value="S" selected>Soles</option>
                                      <option value="D">Dólares</option>
                                    </select>
                                </div>

                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Cuota Inicial:</span></div>
                                    <div>
                                        <input id="valor_cuota" type="text" class="input-text-hidden long" value="20%">
                                    </div>
                                    <input id="r_valor_cuota" name="r_valor_cuota" type="range" class="form-range" required="" min="0" max="100" step="1" value="20" onchange="changeCuotaValue(this.value);">
                                </div>

                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Ingresos:</span></div>
                                    <div>
                                        <input id="valor_ingresos" type="text" class="input-text-hidden long" value="S/. 4000">
                                    </div>
                                    <input id="r_valor_ingresos" name="r_valor_ingresos" type="range" class="form-range col-12 col-md-8" required="" min="500" max="200000" step="100" value="4000" onchange="changeIngresosValue(this.value);">
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Comisión</span></div>
                                    <div class="input-group mb-3">
                                        <input id="comision" name="comision" type="number" class="form-control col-12 col-md-8" required="" step="0.01" value="4.00">
                                        <span class="input-group-text">#</span>
                                    </div>
                                </div>
                                
                                <div class="col-12 row form-group">
                                    <div class="label"><span class="form-label">Ubicación:</span></div>
                                    <select id="ubicacion" name="ubicacion" class="form-select col-12 col-md-8" required="">
                                        <option value="L" selected>Lima</option>
                                        <option value="P">Provincias</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 mb-3 text-center">
                            <button id="cotizador_submit" type="submit" class="btn btn-danger btn-lg btn-block">Calcular y obtener cronograma</button>
                        </div>

                        <div class="container-loader">
                            <div class="loader"></div>
                        </div>
                    </form>
                </div>
                <div class="col-12 col-md-12 text-center d-flex d-md-none pt-4">
                    <h5>Formulas:</h5>
                </div>
                <div class="col-12 col-md-12 text-center d-flex d-md-none">
                    <div class="banda_formulas row">
                        <div class="col logo_banda">
                             <img src="images/formulas/tem.svg" alt="TEM">
                         </div>
                         <div class="col logo_banda">
                             <img src="images/formulas/tcem.svg" alt="TCEM">
                         </div>
                         <div class="col logo_banda">
                             <img src="images/formulas/tcea.svg" alt="TCEA">
                         </div>
                    </div>
                </div>
                
                <div class="col-12 col-md-12 text-center d-flex d-md-none">
                    <div class="banda_formulas row">
                        <div class="col logo_banda">
                            <img src="images/formulas/interes.svg" alt="INTERES">
                        </div>
                        <div class="col logo_banda">
                            <img src="images/formulas/cuota.svg" alt="CUOTAS">
                        </div>
                    </div>
                </div>

            </div>
            <div class="overlay"></div>
        </div>
        
        <footer class="row mx-md-0">
            <div class="col-md-12">
                <div class="container pt-5 pb-3 px-md-5">
                    <div class="row">
                        <span>Integrantes:</span>
                        <ul>
                            <li><b>U20101684</b> - Quispe Salazar, Carlos Enrique</li>
                            <li><b>U20100058</b> - Schenone Sifuentes, Marco Antonio</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-12 aux-divider mt-0 mb-4"></div>

            <div class="col-12">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <img id="icon-ss-footer" src="images/logo_utp.png" alt="www.utp.edu.pe">
                        <p><span>Curso Integrador I: Sistemas - Software(9014)</span> | <br class="d-block d-md-none"><span>Prof. RAÚL ARMANDO JIMÉNEZ DRAGO</span></p>
                        <p><span>Todos los derechos reservados</span></p>                        
                    </div>
                </div>
            </div>
        </footer>
        
        <script type="text/javascript">
            function changePlazoValue(val) {
                document.getElementById("valor_plazo").value = val + " meses";
            }
            
            function changeCuotaValue(val) {
                document.getElementById("valor_cuota").value = val + "%";
            }
            
            function changeValorValue(val) {
                document.getElementById("valor_auto").value = "S/. " + val;
            }
            
            function changeIngresosValue(val) {
                document.getElementById("valor_ingresos").value = "S/. " + val;
            }
        </script>
    </body>
</html>
