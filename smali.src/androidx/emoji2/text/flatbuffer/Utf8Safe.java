package androidx.emoji2.text.flatbuffer;

public final class Utf8Safe
  extends Utf8
{
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
 * Qualified Name:     androidx.emoji2.text.flatbuffer.Utf8Safe
 * JD-Core Version:    0.7.0.1
 */