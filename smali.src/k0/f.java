package k0;

public class f
{
  public static final String[] a = new String[0];
  
  public static void a(StringBuilder paramStringBuilder, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
    {
      paramStringBuilder.append("?");
      if (i < paramInt - 1) {
        paramStringBuilder.append(",");
      }
    }
  }
  
  public static StringBuilder b()
  {
    return new StringBuilder();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k0.f
 * JD-Core Version:    0.7.0.1
 */