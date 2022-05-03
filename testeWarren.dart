void primeira() {
  for (var i = 0; i < 1000000; i++) {
    var b = i.toString();
    b = b.split('').reversed.join();
    int c = int.parse(b);

    if ((i + c) % 2 != 0) {
      print(i);
      // print(c);
      // print(i + c);
      print('-----------');
    }
  }
}

void segunda(int x, var vec) {
  var local = '';
  if (x <= vec.length) {
    vec.sort();
    for (int i = 0; i < x; i++) {
      if (vec[i] <= 0) {
        local = 'Aula normal';
      } else {
        local = 'Aula cancelada';
      }
    }
  } else {
    local = 'Aula cancelada';
  }
  print(local);
}

void terceira(n, List<int> v) {
  List<int> vlist = [];
  List<dynamic> x = [];
  List<dynamic> y = [];
  for (int l = 0; l < v.length; l++) {
    var c = n;
    while (c - v[l] >= 0) {
      c = c - v[l];
      vlist.add(v[l]);
    }
  }
  int tamanho = vlist.length;
  for (int i = 0; i < (1 << tamanho); i++) {
    num somaL = 0;
    var a = [];
    for (int j = 0; j < tamanho; j++) {
      if ((i & (1 << j)) > 0) {
        a.add(vlist[j]);
      }
    }
    for (var valor in a) {
      somaL += valor;
    }
    if (somaL == n) {
      x.add(a);
    }
  }

  int menorValor = x[0].length;
  for (var i = 0; i < x.length; i++) {
    if (x[i].length < menorValor) {
      menorValor = x[i].length;
    }
  }

  for (var item in x) {
    if (item.length == menorValor) {
      y.add(item);
    }
  }
  for (var i = 0; i < y.length - 1; i++) {
    if (y[i].toString() != y[i + 1].toString()) {
      print(y[i]);
      print(y[i + 1]);
    }
  }
}

void main() {
  primeira();
  segunda(3, [-2, -1, 0, 1, 2]);
  terceira(10, [2, 3, 4]);
}
