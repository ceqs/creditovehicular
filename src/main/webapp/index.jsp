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
        <form class="row g-3">
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
            <label for="customRange2" class="form-label">Valor del Auto:</label>
            <input type="range" class="form-range" min="3000" max="200000" step="1000" id="customRange2">
          </div>
          <div class="col-md-6">
            <label for="customRange2" class="form-label">Cuota Inicial:</label>
            <input type="range" class="form-range" min="3000" max="200000" step="1000" id="customRange2">
          </div>
          <div class="col-md-6">
            <label for="customRange2" class="form-label">Plazo:</label>
            <input type="range" class="form-range" min="3000" max="200000" step="1000" id="customRange2">
          </div>
          <div class="col-md-6">
            <label for="customRange2" class="form-label">Ingresos:</label>
            <input type="range" class="form-range" min="3000" max="200000" step="1000" id="customRange2">
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
    </body>
</html>
