package jetbrains.mps.baseLanguage.overloadedOerators.sandbox.test;

/*Generated by MPS */


public class Complex2 extends Complex {
  public Complex2() {
  }
  @Override
  public void print() {
    System.out.print(this.getRe());
    if (this.getIm() > 0) {
      System.out.print("+");
    }
    if (this.getIm() != 0) {
      System.out.println(this.getIm() + "i");
    }
  }
}
