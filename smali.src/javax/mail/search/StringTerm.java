package javax.mail.search;

public abstract class StringTerm
  extends SearchTerm
{
  private static final long serialVersionUID = 1274042129007696269L;
  protected boolean ignoreCase;
  protected String pattern;
  
  protected StringTerm(String paramString)
  {
    this.pattern = paramString;
    this.ignoreCase = true;
  }
  
  protected StringTerm(String paramString, boolean paramBoolean)
  {
    this.pattern = paramString;
    this.ignoreCase = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof StringTerm;
    boolean bool2 = false;
    boolean bool3 = false;
    if (!bool1) {
      return false;
    }
    paramObject = (StringTerm)paramObject;
    if (this.ignoreCase)
    {
      bool1 = bool3;
      if (paramObject.pattern.equalsIgnoreCase(this.pattern))
      {
        bool1 = bool3;
        if (paramObject.ignoreCase == this.ignoreCase) {
          bool1 = true;
        }
      }
      return bool1;
    }
    bool1 = bool2;
    if (paramObject.pattern.equals(this.pattern))
    {
      bool1 = bool2;
      if (paramObject.ignoreCase == this.ignoreCase) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean getIgnoreCase()
  {
    return this.ignoreCase;
  }
  
  public String getPattern()
  {
    return this.pattern;
  }
  
  public int hashCode()
  {
    int i;
    if (this.ignoreCase) {
      i = this.pattern.hashCode();
    } else {
      i = this.pattern.hashCode();
    }
    return i;
  }
  
  protected boolean match(String paramString)
  {
    int i = paramString.length();
    int j = this.pattern.length();
    for (int k = 0; k <= i - j; k++)
    {
      boolean bool = this.ignoreCase;
      String str = this.pattern;
      if (paramString.regionMatches(bool, k, str, 0, str.length())) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.StringTerm
 * JD-Core Version:    0.7.0.1
 */