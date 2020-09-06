<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Aula 03 - Tabuada | Bruno Brasolin</title>
  </head>
  <body>
    <h1>Aula 03 - Tabuada | Bruno Brasolin</h1>
    <input type="number" />
    <button type="submit" onclick="calculate()">Calcular</button>
    <p>Para n = <span class="value">0</span></p>
    <ul>
      <li>
        <span class="value">0</span> x 1 =
        <span class="result" id="result-1">0</span>
      </li>
      <li>
        <span class="value">0</span> x 2 =
        <span class="result" id="result-2">0</span>
      </li>
      <li>
        <span class="value">0</span> x 3 =
        <span class="result" id="result-3">0</span>
      </li>
      <li>
        <span class="value">0</span> x 4 =
        <span class="result" id="result-4">0</span>
      </li>
      <li>
        <span class="value">0</span> x 5 =
        <span class="result" id="result-5">0</span>
      </li>
      <li>
        <span class="value">0</span> x 6 =
        <span class="result" id="result-6">0</span>
      </li>
      <li>
        <span class="value">0</span> x 7 =
        <span class="result" id="result-7">0</span>
      </li>
      <li>
        <span class="value">0</span> x 8 =
        <span class="result" id="result-8">0</span>
      </li>
      <li>
        <span class="value">0</span> x 9 =
        <span class="result" id="result-9">0</span>
      </li>
      <li>
        <span class="value">0</span> x 10 =
        <span class="result" id="result-10">0</span>
      </li>
    </ul>
    <script>
      function calculate() {
        let value = document.querySelector('input').value;
        let array = [
          1 * value,
          2 * value,
          3 * value,
          4 * value,
          5 * value,
          6 * value,
          7 * value,
          8 * value,
          9 * value,
          10 * value,
        ];
        document.querySelectorAll('.value').forEach(val => (val.innerHTML = value));
        document.querySelector('#result-1').innerHTML = array[0];
        document.querySelector('#result-2').innerHTML = array[1];
        document.querySelector('#result-3').innerHTML = array[2];
        document.querySelector('#result-4').innerHTML = array[3];
        document.querySelector('#result-5').innerHTML = array[4];
        document.querySelector('#result-6').innerHTML = array[5];
        document.querySelector('#result-7').innerHTML = array[6];
        document.querySelector('#result-8').innerHTML = array[7];
        document.querySelector('#result-9').innerHTML = array[8];
        document.querySelector('#result-10').innerHTML = array[9];
      }
    </script>
  </body>
</html>
