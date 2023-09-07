package javax.mail.search;

import java.util.Date;

public abstract class DateTerm
  extends ComparisonTerm
{
  private static final long serialVersionUID = 4818873430063720043L;
  protected Date date;
  
  protected DateTerm(int paramInt, Date paramDate)
  {
    this.comparison = paramInt;
    this.date = paramDate;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof DateTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    bool1 = bool2;
    if (((DateTerm)paramObject).date.equals(this.date))
    {
      bool1 = bool2;
      if (super.equals(paramObject)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public int getComparison()
  {
    return this.comparison;
  }
  
  public Date getDate()
  {
    return new Date(this.date.getTime());
  }
  
  public int hashCode()
  {
    return this.date.hashCode() + super.hashCode();
  }
  
  protected boolean match(Date paramDate)
  {
    int i = this.comparison;
    boolean bool1 = true;
    boolean bool2 = true;
    switch (i)
    {
    default: 
      return false;
    case 6: 
      bool3 = bool2;
      if (!paramDate.after(this.date)) {
        if (paramDate.equals(this.date)) {
          bool3 = bool2;
        } else {
          bool3 = false;
        }
      }
      return bool3;
    case 5: 
      return paramDate.after(this.date);
    case 4: 
      return paramDate.equals(this.date) ^ true;
    case 3: 
      return paramDate.equals(this.date);
    case 2: 
      return paramDate.before(this.date);
    }
    boolean bool3 = bool1;
    if (!paramDate.before(this.date)) {
      if (paramDate.equals(this.date)) {
        bool3 = bool1;
      } else {
        bool3 = false;
      }
    }
    return bool3;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.DateTerm
 * JD-Core Version:    0.7.0.1
 */