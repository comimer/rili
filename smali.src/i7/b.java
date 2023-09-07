package i7;

public class b
{
  public final int a;
  
  public b(int paramInt)
  {
    this.a = paramInt;
  }
  
  public static b c(int... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      k |= paramVarArgs[j];
      j++;
    }
    return new b(k);
  }
  
  public b a(int paramInt)
  {
    return new b(paramInt | this.a);
  }
  
  public boolean b(int paramInt)
  {
    boolean bool;
    if ((paramInt & this.a) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i7.b
 * JD-Core Version:    0.7.0.1
 */