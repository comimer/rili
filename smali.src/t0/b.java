package t0;

public class b
{
  private boolean a;
  private boolean b;
  private boolean c;
  private boolean d;
  
  public b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramBoolean3;
    this.d = paramBoolean4;
  }
  
  public boolean a()
  {
    return this.a;
  }
  
  public boolean b()
  {
    return this.c;
  }
  
  public boolean c()
  {
    return this.d;
  }
  
  public boolean d()
  {
    return this.b;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = (b)paramObject;
    if ((this.a != paramObject.a) || (this.b != paramObject.b) || (this.c != paramObject.c) || (this.d != paramObject.d)) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    boolean bool1 = this.a;
    boolean bool2 = bool1;
    if (this.b) {
      j = bool1 + true;
    }
    bool1 = j;
    int i;
    if (this.c) {
      i = j + 256;
    }
    int j = i;
    if (this.d) {
      j = i + 4096;
    }
    return j;
  }
  
  public String toString()
  {
    return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", new Object[] { Boolean.valueOf(this.a), Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.d) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t0.b
 * JD-Core Version:    0.7.0.1
 */