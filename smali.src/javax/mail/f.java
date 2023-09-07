package javax.mail;

public class f
{
  private a a;
  private String b;
  private String c;
  private String d;
  private String e;
  
  public f(a parama, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.a = parama;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
    this.e = paramString4;
  }
  
  public String toString()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("javax.mail.Provider[");
    ((StringBuilder)localObject1).append(this.a);
    ((StringBuilder)localObject1).append(",");
    ((StringBuilder)localObject1).append(this.b);
    ((StringBuilder)localObject1).append(",");
    ((StringBuilder)localObject1).append(this.c);
    Object localObject2 = ((StringBuilder)localObject1).toString();
    localObject1 = localObject2;
    if (this.d != null)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append((String)localObject2);
      ((StringBuilder)localObject1).append(",");
      ((StringBuilder)localObject1).append(this.d);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    localObject2 = localObject1;
    if (this.e != null)
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(",");
      ((StringBuilder)localObject2).append(this.e);
      localObject2 = ((StringBuilder)localObject2).toString();
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append((String)localObject2);
    ((StringBuilder)localObject1).append("]");
    return ((StringBuilder)localObject1).toString();
  }
  
  public static class a
  {
    public static final a b = new a("STORE");
    public static final a c = new a("TRANSPORT");
    private String a;
    
    private a(String paramString)
    {
      this.a = paramString;
    }
    
    public String toString()
    {
      return this.a;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.f
 * JD-Core Version:    0.7.0.1
 */