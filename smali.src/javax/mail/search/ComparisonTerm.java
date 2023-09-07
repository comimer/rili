package javax.mail.search;

public abstract class ComparisonTerm
  extends SearchTerm
{
  public static final int EQ = 3;
  public static final int GE = 6;
  public static final int GT = 5;
  public static final int LE = 1;
  public static final int LT = 2;
  public static final int NE = 4;
  private static final long serialVersionUID = 1456646953666474308L;
  protected int comparison;
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ComparisonTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    if (((ComparisonTerm)paramObject).comparison == this.comparison) {
      bool2 = true;
    }
    return bool2;
  }
  
  public int hashCode()
  {
    return this.comparison;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.ComparisonTerm
 * JD-Core Version:    0.7.0.1
 */