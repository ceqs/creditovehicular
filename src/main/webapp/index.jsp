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
    </head>
    <body style = "margin-left: 80px; margin-right:80px;">
        <h1>Credito Vehicular</h1>        
        <form class="row g-3" method="post" action="corrida.jsp">
          <div class="col-md-6">
            <label for="inputState" class="form-label">Tipo de Auto:</label>
            <select id="inputState" class="form-select">
              <option selected>Nuevo</option>
              <option>Usado</option>
              <option>Taxi</option>
            </select>
          </div>
          <div class="col-md-6">
            <label for="inputState" class="form-label">Moneda:</label>
            <select id="inputState" class="form-select">
              <option selected>Soles</option>
              <option>Dolares</option>
            </select>
          </div>
          <div class="col-md-6">
            <label for="customRange2" class="form-label">Valor del Auto:&nbsp;<input type="text" id="value_valor" value="S/. 30000"></label>
            <input type="range" class="form-range" min="3000" max="200000" step="1000" value="30000" id="customRange2" onchange="changeValorValue(this.value);">
          </div>
          <div class="col-md-6">
            <label for="range_cuota" class="form-label">Cuota Inicial:&nbsp;<input type="text" id="value_cuota" value="20%"></label>
            <input type="range" class="form-range" min="0" max="100" step="1" id="range_cuota" value="20" onchange="changeCuotaValue(this.value);">
          </div>
          <div class="col-md-6">
              <label for="range_plazo" class="form-label">Plazo:&nbsp;<input type="text" id="value_plazo" value="12 meses"></label>
              <input id="range_plazo" type="range" class="form-range" min="3" max="60" step="1" value="12" onchange="changePlazoValue(this.value);">
          </div>
          <div class="col-md-6">
            <label for="customRange2" class="form-label">Ingresos:&nbsp;<input type="text" id="value_ingresos" value="S/. 4000"></label>
            <input type="range" class="form-range" min="500" max="200000" step="100" value="4000" id="customRange2" onchange="changeIngresosValue(this.value);">
          </div>
          <div class="col-md-6">
            <label for="inputState" class="form-label">Ubicación:</label>
            <select id="inputState" class="form-select">
              <option selected>Lima</option>
              <option>Provincias</option>
            </select>
          </div>
          <div class="col-12">
            <button type="submit" class="btn btn-primary">Calcular</button>
          </div>
        </form>
        <script type="text/javascript">
            function changePlazoValue(val) {
                document.getElementById("value_plazo").value = val + " meses";
            }
            
            function changeCuotaValue(val) {
                document.getElementById("value_cuota").value = val + "%";
            }
            
            function changeValorValue(val) {
                document.getElementById("value_valor").value = "S/. " + val;
            }
            
            function changeIngresosValue(val) {
                document.getElementById("value_ingresos").value = "S/. " + val;
            }
        </script>
    </body>
</html>
