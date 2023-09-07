package javax.mail.internet;

public class a
{
  private String a;
  private String b;
  private ParameterList c;
  
  public a(String paramString)
    throws ParseException
  {
    Object localObject = new b(paramString, "()<>@,;:\\\"\t []/?=");
    b.a locala = ((b)localObject).e();
    if (locala.a() == -1)
    {
      this.a = locala.b();
      locala = ((b)localObject).e();
      if ((char)locala.a() == '/')
      {
        locala = ((b)localObject).e();
        if (locala.a() == -1)
        {
          this.b = locala.b();
          paramString = ((b)localObject).d();
          if (paramString != null) {
            this.c = new ParameterList(paramString);
          }
          return;
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("In Content-Type string <");
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(">, expected MIME subtype, got ");
        ((StringBuilder)localObject).append(locala.b());
        throw new ParseException(((StringBuilder)localObject).toString());
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("In Content-Type string <");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append(">, expected '/', got ");
      ((StringBuilder)localObject).append(locala.b());
      throw new ParseException(((StringBuilder)localObject).toString());
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("In Content-Type string <");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(">, expected MIME type, got ");
    ((StringBuilder)localObject).append(locala.b());
    throw new ParseException(((StringBuilder)localObject).toString());
  }
  
  public a(String paramString1, String paramString2, ParameterList paramParameterList)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramParameterList;
  }
  
  public String a(String paramString)
  {
    ParameterList localParameterList = this.c;
    if (localParameterList == null) {
      return null;
    }
    return localParameterList.e(paramString);
  }
  
  public String b()
  {
    return this.a;
  }
  
  public String c()
  {
    return this.b;
  }
  
  public boolean d(String paramString)
  {
    try
    {
      a locala = new javax/mail/internet/a;
      locala.<init>(paramString);
      boolean bool = e(locala);
      return bool;
    }
    catch (ParseException paramString) {}
    return false;
  }
  
  public boolean e(a parama)
  {
    String str = this.a;
    boolean bool1 = false;
    boolean bool2;
    if ((str != null) || (parama.b() != null))
    {
      str = this.a;
      bool2 = bool1;
      if (str == null) {
        break label119;
      }
      if (!str.equalsIgnoreCase(parama.b()))
      {
        bool2 = bool1;
        break label119;
      }
    }
    parama = parama.c();
    str = this.b;
    if (((str != null) && (str.startsWith("*"))) || ((parama != null) && (parama.startsWith("*")))) {
      return true;
    }
    str = this.b;
    if ((str != null) || (parama != null))
    {
      bool2 = bool1;
      if (str != null)
      {
        bool2 = bool1;
        if (!str.equalsIgnoreCase(parama)) {}
      }
    }
    else
    {
      bool2 = true;
    }
    label119:
    return bool2;
  }
  
  public void f(String paramString1, String paramString2)
  {
    if (this.c == null) {
      this.c = new ParameterList();
    }
    this.c.h(paramString1, paramString2);
  }
  
  public String toString()
  {
    if ((this.a != null) && (this.b != null))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append('/');
      localStringBuilder.append(this.b);
      ParameterList localParameterList = this.c;
      if (localParameterList != null) {
        localStringBuilder.append(localParameterList.i(localStringBuilder.length() + 14));
      }
      return localStringBuilder.toString();
    }
    return "";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.internet.a
 * JD-Core Version:    0.7.0.1
 */