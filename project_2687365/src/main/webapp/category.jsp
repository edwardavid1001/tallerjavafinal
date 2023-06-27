
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta name="author" content="Edwar Fernandez">
    <meta name="description" content="formulario para la categoria de los Productos">
    <meta name="kaywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Billar G8</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boostrap-icons@1.10.3/font/boostrap-icons.css">
    <link rel="stylesheet" href="css/estilos.css">

</head>
<body>
  <h1>Registro de Productos de Billar</h1>
  <form>
    <label for="categoria">Categoría:</label>
    <select id="categoria" name="categoria" required>
      <option value="">Seleccione una categoría</option>
      <option name="name"value="tacos">Tacos</option>
      <option name=""value="mesas">Mesas</option>
      <option name=""value="bolas">Bolas</option>
      <!-- Agrega más opciones de categorías según tus necesidades -->
    </select>

    <button type="submit">Guardar</button>
  </form>
</body>
</html>
