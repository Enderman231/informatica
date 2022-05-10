<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="miocontainer">
        <label for="peso grassi">Volt=</label>
         <input type="number" name="Voltaggio" id="input1">
         <label for="peso grassi">V</label>
        <p></p> 
         <label for="peso carboidrati">Resistenza 1=</label>
         <input type="number" name="R1" id="input2">
         <label for="peso carboidrati">Ohm</label>
        <p></p>
         <label for="peso carboidrati">Resistenza 2=</label>
         <input type="number" name="R2" id="input3">
         <label for="peso carboidrati">Ohm</label>
        <p></p>
         <label for="peso grassi">Resistenza 3=</label>
         <input type="number" name="R3" id="input4">
         <label for="peso grassi">Ohm</label>
        <p></p>
         <label for="peso grassi">Intensità=</label>
         <input type="number" name="Intensità" id="input5">
         <label for="peso grassi">A</label>
        <p></p>
         <button id="calcolaButton" onclick="Calcolatore()">Calcola</button>
         <p id="RTOT"></p>
         <p id="ddp"></p> 
         <p id="Vol"></p>
    </div>
    <script>
        function Calcolatore(){
            let Voltaggio=parseInt(document.getElementById("input1").value);
            let R1=parseInt(document.getElementById("input2").value);
            let R2=parseInt(document.getElementById("input3").value);
            let R3=parseInt(document.getElementById("input4").value);
            let Intensità=parseInt(document.getElementById("input5").value);
            let RTot=R1+R2+R3;
            let V=RTot*Intensità;
            document.getElementById("RTOT").innerHTML="La resistenza totale è: "+RTot;
            document.getElementById("ddp").innerHTML="La differenza di potenziale è: "+V;
            R1=Intensità*R1
            R2=Intensità*R2
            R3=Intensità*R3
            document.getElementById("Vol").innerHTML="La 1° resistenza vale: "+R1+", la 2° resistenza vale: "+R2+", la 1° resistenza vale: "+R3;
        }
    </script>
</body>
</html>
