import java.util.*;

public ArrayList dft (ArrayList <PVector> sig) {
  ArrayList <PVector> X = new ArrayList <PVector> ();
  int N = sig.size();
  for (int k = 0; k < N; k++) {
    PVector Xk = new PVector (0, 0);
    for (int n = 0; n < N; n++) {
      float phi = ( 2*k*PI*n )/ N;
      PVector c = new PVector (cos(phi), -sin(phi));
      //Xk.add( PVector.fromAngle(sig.get(n).heading()+c.heading()).setMag(sig.get(n).mag()*c.mag())); //alternative multiplication beetween complex numbers
      Xk.add(mult(sig.get(n),c));
    }
    Xk.div(N);
    float amp = Xk.mag();
    float phase = Xk.heading();
    float freq = k; 
    Xk = new PVector(amp, phase, freq);
    X.add(Xk);
  }
  return X;
} 

ArrayList Sort (ArrayList <PVector> arr) {
  Collections.sort(arr, new Comparator<PVector>() {
    public int compare(PVector v1, PVector v2) {
      if (v1.x == v2.x)
      return 0;
      return v1.x < v2.x ? 1 : -1;
    }
  }
  );
  return arr;
}

PVector mult (PVector a, PVector b) {
  float re = a.x*b.x-a.y*b.y;
  float im = a.x*b.y+a.y*b.x;
  return new PVector(re, im);
} 
