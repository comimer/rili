package androidx.emoji2.text.flatbuffer;

public abstract class Utf8
{
  private static Utf8 a;
  
  public static Utf8 a()
  {
    if (a == null) {
      a = new Utf8Safe();
    }
    return a;
  }
  
  static class UnpairedSurrogateException
    extends IllegalArgumentException
  {
    UnpairedSurrogateException(int paramInt1, int paramInt2)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.flatbuffer.Utf8
 * JD-Core Version:    0.7.0.1
 */