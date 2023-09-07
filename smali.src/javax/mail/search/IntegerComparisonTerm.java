package javax.mail.search;

public abstract class IntegerComparisonTerm
  extends ComparisonTerm
{
  private static final long serialVersionUID = -6963571240154302484L;
  protected int number;
  
  protected IntegerComparisonTerm(int paramInt1, int paramInt2)
  {
    this.comparison = paramInt1;
    this.number = paramInt2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof IntegerComparisonTerm;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    bool1 = bool2;
    if (((IntegerComparisonTerm)paramObject).number == this.number)
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
  
  public int getNumber()
  {
    return this.number;
  }
  
  public int hashCode()
  {
    return this.number + super.hashCode();
  }
  
  protected boolean match(int paramInt)
  {
    int i = this.comparison;
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool5 = true;
    boolean bool6 = true;
    switch (i)
    {
    default: 
      return false;
    case 6: 
      if (paramInt < this.number) {
        bool6 = false;
      }
      return bool6;
    case 5: 
      if (paramInt > this.number) {
        bool6 = bool1;
      } else {
        bool6 = false;
      }
      return bool6;
    case 4: 
      if (paramInt != this.number) {
        bool6 = bool2;
      } else {
        bool6 = false;
      }
      return bool6;
    case 3: 
      if (paramInt == this.number) {
        bool6 = bool3;
      } else {
        bool6 = false;
      }
      return bool6;
    case 2: 
      if (paramInt < this.number) {
        bool6 = bool4;
      } else {
        bool6 = false;
      }
      return bool6;
    }
    if (paramInt <= this.number) {
      bool6 = bool5;
    } else {
      bool6 = false;
    }
    return bool6;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     javax.mail.search.IntegerComparisonTerm
 * JD-Core Version:    0.7.0.1
 */